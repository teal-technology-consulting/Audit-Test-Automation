@{
RootModule = 'ATAPAuditor.psm1'
ModuleVersion = '5.7.1'
GUID = '1662a599-4e3a-4f72-a844-9582077b589e'
Author = 'Benedikt Böhme, Patrick Helbach, Steffen Winternheimer, Phan Quang Nguyen, Daniel Ströher'
CompanyName = 'Teal Technology Consulting GmbH'
Copyright = '(c) 2023 FB Pro GmbH, (c) 2023, Teal Technology Consulting GmbH.All rights reserved.'
Description = 'Allows you to tests your system with the included reports.'
PowerShellVersion = '5.0'
RequiredModules = @(
	'ATAPHtmlReport'
)
# RequiredAssemblies = @()
# ScriptsToProcess = @()
# TypesToProcess = @()
# FormatsToProcess = @()
# NestedModules = @()
FunctionsToExport = @(
	'Save-ATAPHtmlReport'
	'Invoke-ATAPReport'
	'Get-ATAPReport'
	'Get-AuditResource'
	'Test-AuditGroup'
)
CmdletsToExport = @()
VariablesToExport = ''
AliasesToExport = @(
	'shr'
)
# ModuleList = @()
# FileList = @()
PrivateData = @{
	PSData = @{
		Tags = @('reporting', 'auditing', 'benchmarks', 'fb-pro','teal-technology-consulting', 'html')
		LicenseUri = 'https://github.com/teal-technology-consulting/Teal-Audit-Proof/blob/master/LICENSE’
		ProjectUri = 'https://github.com/teal-technology-consulting/Teal-Audit-Proof'
		# IconUri = ''
		# ReleaseNotes = ''

	} # End of PSData hashtable

} # End of PrivateData hashtable
# HelpInfoURI = ''
# DefaultCommandPrefix = 'ATAP'
}
