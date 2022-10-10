using namespace Microsoft.PowerShell.Commands

#region Initialization

$RootPath = Split-Path $MyInvocation.MyCommand.Path -Parent

$script:atapReportsPath = $env:ATAPReportPath
if (-not $script:atapReportsPath) {
	$script:atapReportsPath = [Environment]::GetFolderPath('MyDocuments') | Join-Path -ChildPath 'ATAPReports'
}
#endregion

#region Classes
class AuditTest {
	[string] $Id
	[string] $Task
	[hashtable[]] $Constraints
	[scriptblock] $Test
}

enum AuditInfoStatus {
	True
	False
	Warning
	None
	Error
}

class AuditInfo {
	[string] $Id
	[string] $Task
	[AuditInfoStatus] $Status
	[string] $Message
}

class ReportSection {
	[string] $Title
	[string] $Description
	[AuditInfo[]] $AuditInfos
	[ReportSection[]] $SubSections
}

class Report {
	[string] $Title
	[string] $ModuleName
	[string] $AuditorVersion
	[hashtable] $HostInformation
	[string[]] $BasedOn
	[ReportSection[]] $Sections
	[RSFullReport] $RSReport
}

# RiskScore Classes
enum RSEndResult {
	Critical
	High
	Medium
	Low
	Unknown
}

class RSFullReport {
	[RSSeverityReport] $RSSeverityReport
	[RSQuantityReport] $RSQuantityReport
}

class RSSeverityReport {
	[AuditInfo[]] $AuditInfos
	[ResultTable[]] $ResultTable
	[RSEndResult] $Endresult
}

class RSQuantityReport {

}

class ResultTable {
	[int] $Success
	[int] $Failed
}

#endregion

#region helpers
function Test-ArrayEqual {
	[OutputType([bool])]
	[CmdletBinding()]
	param (
		[Parameter(Mandatory = $true)]
		[AllowNull()]
		[AllowEmptyCollection()]
		[array]
		$Array1,

		[Parameter(Mandatory = $true)]
		[AllowNull()]
		[AllowEmptyCollection()]
		[array]
		$Array2
	)

	if ($null -eq $Array1) {
		$Array1 = @()
	}

	if ($null -eq $Array2) {
		$Array2 = @()
	}

	if ($Array1.Count -ne $Array2.Count) {
		return $false
	}

	for ($i = 0; $i -lt $Array1.Count; $i++) {
		if ($Array1[$i] -ne $Array2[$i]) {
			return $false
		}
	}
	return $true
}

# Get domain role
# 0 {"Standalone Workstation"}
# 1 {"Member Workstation"}
# 2 {"Standalone Server"}
# 3 {"Member Server"}
# 4 {"Backup Domain Controller"}
# 5 {"Primary Domain Controller"}
function Get-DomainRole {
	[DomainRole](Get-CimInstance -Class Win32_ComputerSystem).DomainRole
}


# region for RiskScore functions
# function that calls all RiskScore-Subfunctions and generates the RSFullReport
function Get-RSFullReport {
	[CmdletBinding()]
	[OutputType([RSFullReport])]
	
	$severity = Get-RSSeverityReport

	
	return ([RSFullReport]@{
		RSSeverityReport = $severity
	})
}
# function to generate RiskSeverityReport
function Get-RSSeverityReport {
    [CmdletBinding()]
    [OutputType([RSSeverityReport])]

    # Initialization
	[AuditInfo[]]$tests = Test-AuditGroup "RSSeverityTests"

    # gather results of tests and save it in resultTable
	$resultTable = [ResultTable]::new()
    foreach ($test in $tests) {
		if ($test.AuditInfoStatus -EQ "True") {
			$resultTable.Success += 1
		}
        if ($test.AuditInfostatus -ne "True") {
            $resultTable.Failed += 1
        }
    }

    return ([RSSeverityReport]@{
            AuditInfos  = $tests
            ResultTable = $resultTable
            Endresult   = Get-RSSeverityEndResult($resultTable)
        })
}

# helper for EndResult of RiskScoreSeverity
function Get-RSSeverityEndResult {
    [CmdletBinding()]
    [OutputType([RSEndResult])]

    param (
        [Parameter(Mandatory = $true)]
        [ResultTable[]]
        $resultTable
    )

    $result = "Unknown"

    $f = $resultTable.Failed
    if ($f -eq 0) {
        $result = "Low"
    }
    if ($f -ge 1) {
        $result = "Critical"
    }
    return $result
}

#endregion

<#
.SYNOPSIS
	Runs the tests of an AuditGroup.
.DESCRIPTION
	Runs the tests of an AuditGroup file.
.EXAMPLE
	PS C:\> Test-AuditGroup "Google Chrome-CIS-2.0.0#RegistrySettings"
	This runs tests defined in the AuditGroup file called 'Google Chrome-CIS-2.0.0#RegistrySettings'.
.PARAMETER GroupName
	The name of the AuditGroup.
#>
function Test-AuditGroup {
	[CmdletBinding()]
	[OutputType([AuditInfo[]])]
	param(
		[Parameter(Mandatory = $true)]
		[string]
		$GroupName
	)

	$tests = . "$RootPath\AuditGroups\$($GroupName).ps1"

	$i = 1
	foreach ($test in $tests) {
		[int]$p = $i++ / $tests.Count * 100
		Write-Progress -Activity "Testing Report for '$GroupName'" -Status "Progress:" -PercentComplete $p
		Write-Verbose "Testing $($test.Id)"
		$message = "Test not implemented yet."
		$status = [AuditInfoStatus]::None
		if ($test.Constraints) {
			$DomainRoleConstraint = $test.Constraints | Where-Object Property -EQ "DomainRole"
			$currentRole = Get-DomainRole
			$domainRoles = $DomainRoleConstraint.Values
			if ($currentRole -notin $domainRoles) {
				$roleValue = (Get-CimInstance -Class Win32_ComputerSystem).DomainRole
				if($roleValue -eq 4 -or $roleValue -eq 5){
					$message = 'Not applicable. This audit only applies to Domain controllers.'
					$status = [AuditInfoStatus]::None
				}
				if($roleValue -ne 4 -or $roleValue -ne 5){
					$message = 'Not applicable. This audit does not apply to Domain controllers.'
					$status = [AuditInfoStatus]::None
				}
				if($roleValue -eq 0 -or $roleValue -eq 2){
					$message = 'Not applicable. This audit does not apply to Standalone systems.'
					$status = [AuditInfoStatus]::None
				}
				# Write-Output ([AuditInfo]@{
				# 	Id = $test.Id
				# 	Task = $test.Task
				# 	Message = 'Not applicable. This audit applies only to {0}.' -f ($DomainRoleConstraint.Values -join ' and ')
				# 	Status = [AuditInfoStatus]::None
				# })
				continue
			}
		}

		try {
			$innerResult = & $test.Test

			if ($null -ne $innerResult) {
				$message = $innerResult.Message
				$status = [AuditInfoStatus]$innerResult.Status
			}
		}
		catch {
			Write-Error $_
			$message = "An error occured!"
			$status = [AuditInfoStatus]::Error
		}

		Write-Output ([AuditInfo]@{
			Id = $test.Id
			Task = $test.Task
			Message = $message
			Status = $status
		})
	}
}

<#
.SYNOPSIS
	Get an audit resource.
.DESCRIPTION
	A resource provides abstration over an existing system resource. It is used by AuditTests.
.PARAMETER Name
	The name of the resource.
.EXAMPLE
	PS C:\> Get-AuditResource -Name "WindowsSecurityPolicy"
	Gets the WindowsSecurityPolicy resource.
#>
function Get-AuditResource {
	[CmdletBinding()]
	param (
		[Parameter(Mandatory = $true)]
		[string]
		$Name
	)

	if ($null -eq $script:loadedResources) {
		return & "$RootPath\Resources\$($Name).ps1"
	}
	if (-not $script:loadedResources.ContainsKey($Name)) {
		$script:loadedResources[$Name] = (& "$RootPath\Resources\$($Name).ps1")
	}
	return $script:loadedResources[$Name]
}

<#
.SYNOPSIS
	Get all reports.
.DESCRIPTION
	Find the reports installed on the system.
.PARAMETER ReportName
	The name of the report.
.EXAMPLE
	PS C:\> Get-ATAPReport
	Gets all reports.
#>
function Get-ATAPReport {
	[CmdletBinding()]
	param (
		[Parameter()]
		[string]
		$ReportName = "*"
	)

	return Get-ChildItem "$RootPath\Reports\$ReportName.ps1" | Select-Object -Property BaseName
}

<#
.SYNOPSIS
	Invokes an ATAPReport
.DESCRIPTION
	Long description
.EXAMPLE
	PS C:\> ATAPReport -ReportName "Google Chrome"
	This runs the report and outputs the logical report data.
.PARAMETER ReportName
	The name of the report.
.OUTPUTS
	Logical report data.
#>
function Invoke-ATAPReport {
	[CmdletBinding()]
	param (
		[Alias('RN')]
		[Parameter(Mandatory = $true)]
		[string]
		$ReportName
	)

	$script:loadedResources = @{}
	# Load the module manifest
	$moduleInfo = Import-PowerShellDataFile -Path "$RootPath\ATAPAuditor.psd1"

	[Report]$report = (& "$RootPath\Reports\$ReportName.ps1")
	$report.RSReport = Get-RSFullReport
	$report.AuditorVersion = $moduleInfo.ModuleVersion
	return $report
}

<#
.SYNOPSIS
	Saves an ATAPHtmlReport
.DESCRIPTION
	Runs the specified ATAPReport and creates a report.
.EXAMPLE
	PS C:\> Save-ATAPHtmlReport -ReportName "Google Chrome"
	This runs the 'Google Chrome' report and stores the resulting html file (by default) under ~\Documents\ATAPReports
.PARAMETER ReportName
	The name of the report.
.PARAMETER Path
	The path where the result html document should be stored.
.PARAMETER DarkMode
	By default the report is displayed in light mode. If specified the report will be displayed in dark mode.
.PARAMETER Force
	If the parent directory doesn't exist it will be created.
.OUTPUTS
	None.
#>
function Save-ATAPHtmlReport {
	[CmdletBinding()]
	param(
		[Alias('RN')]
		[Parameter(Mandatory = $true)]
		[string]
		$ReportName,

		[Parameter(Mandatory = $false)]
		[string]
		$Path = ($script:atapReportsPath | Join-Path -ChildPath "$($ReportName)_$(Get-Date -UFormat %Y%m%d_%H%M%S).html"),

		[switch]
		$DarkMode,

		[Parameter()]
		[switch]
		$Force
	)

	$parent = Split-Path $Path
	if (-not [string]::IsNullOrEmpty($parent) -and -not (Test-Path $parent)) {
		New-Item -ItemType Directory -Path $parent -Force | Out-Null
	}
	Invoke-ATAPReport -ReportName $ReportName | Get-ATAPHtmlReport -Path $Path -DarkMode:$DarkMode
}

New-Alias -Name 'shr' -Value Save-ATAPHtmlReport

$completer = {
	param($commandName, $parameterName, $wordToComplete, $commandAst, $fakeBoundParameters)

	Get-ChildItem "$RootPath\Reports\*.ps1" `
		| Select-Object -ExpandProperty BaseName `
		| ForEach-Object { "`"$_`"" } `
		| Where-Object { $_ -like "*$wordToComplete*" }
}.GetNewClosure()

Register-ArgumentCompleter -CommandName Save-ATAPHtmlReport -ParameterName ReportName -ScriptBlock $completer
Register-ArgumentCompleter -CommandName shr -ParameterName ReportName -ScriptBlock $completer