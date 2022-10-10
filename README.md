# Audit Test Automation Package

<table>
 <tr>
		<th>Powershell Gallery</th>
		<th>Direct download</th>
 	</tr>
	<tr>
		<td>

  ATAPHtmlReport:\
[![ataphtmlreportshield](https://img.shields.io/powershellgallery/v/ATAPHtmlReport)](https://www.powershellgallery.com/packages/ATAPHtmlReport)

ATAPAuditor:\
[![atapauditorshield](https://img.shields.io/powershellgallery/v/ATAPAuditor)](https://www.powershellgallery.com/packages/ATAPAuditor)

  </td>
		<td>
  
  AuditTAP Release 5.2:\
[![ATAP](https://www.fb-pro.com/wp-content/uploads/2022/09/atap-download-button.png)](https://github.com/fbprogmbh/Audit-Test-Automation/archive/refs/tags/v5.2.zip)
  </tD>
 	</tr>
</table>
	
## Overview

Our Audit Test Automation Package enables you to get an overview about the compliance
status of your systems against established hardening guidelines. Below you will find an overview of the integrated hardening standards and their respective authors (such as Microsoft, CIS, BSI, etc.).
The resulting HTML-reports provide a transparent and comprehensible overview over the compliance-status for each of the different settings and configurations suggested inside the provided industry standards and hardening guides. 

## Modules

The package consists of the following PowerShell modules:

* ATAPHtmlReport
* ATAPAuditor

## Reports

*ATAPAuditor* contains reports based on the following benchmarks including the version number. 
How to read the table below:

* The entries in the **DISA** column specify the version of the DISA STIG that is used.
* The entries in the **CIS** column specify the version of the CIS benchmark that is used.
* The entries in the **MS** column specify the version of the Microsoft security baseline that is used.
* The entries in the **BSI** column specify the version of the BSI benchmark that is used.
* The entries in the **ACSC** column specify the version of the ACSC benchmark that is used.

Report | DISA | CIS | Microsoft | BSI | ACSC
--------- | -----| --- | -- | --- | ---
Debian 10 | - | - | - | - | -
Fedora 35 | - | - | - | - | -
Google Chrome | V1R15 | 2.0.0 | - | - | -
Mozilla Firefox | V4R24 | 1.0.0 | - | - | -
Microsoft Edge | - | - | 99 | - | -
Microsoft Internet Explorer 11 | V1R16 | 1.1.0 | 2004 | - | -
Microsoft IIS10 | - | 1.1.1 | - | - | -
Microsoft Office 2016 Excel | V1R2 | - | - | - | -
Microsoft Office 2016 Outlook | V1R2 | - | - | - | -
Microsoft Office 2016 PowerPoint | V1R1 | - | - | - | -
Microsoft Office 2016 SkypeForBusiness | V1R1 | - | - | - | -
Microsoft Office 2016 Word | V1R1 | - | - | - | -
Microsoft Office 2016 | - | 1.1.0 | - | - | -
Microsoft SQL Server 2016 | - | 1.3.0 | - | - | -
Microsoft Windows 7 | - | 3.1.0 | - | - | -
Microsoft Windows 10 | V1R16 | 1.12.0 | 21H1 | SiM-08202, SiSyPHuS 1.3 | 10.2021
Microsoft Windows 10 GDPR | - | - | 16082019 | V1.1 | -
Microsoft Windows 10 BSI | - | - | - | SiM-08202, SiSyPHuS 1.3 | -
Microsoft Windows 10 All | V1R16 | 1.12.0 | 21H1 | SiM-08202, SiSyPHuS 1.3 | 10.2021
Microsoft Windows 11 | - | 1.0.0 | FINAL, RTLFB 21H2 | - | -
Microsoft Windows Server 2012 R2 | 2.19 | 2.5.0 | - | - | -
Microsoft Windows Server 2016 | 1.12 | 1.2.0 | FINAL | - | -
Microsoft Windows Server 2016 DC | V1R6 | 1.2.0 | FINAL | - | -
Microsoft Windows Server 2019 | 1.5 | 1.3.0 | FINAL | - | -
Microsoft Windows Server 2019 DC | V1R2 | 1.1.0 | FINAL | - | -
Microsoft Windows Server 2022 | - | 1.0.0 | FINAL | - | -
Red Hat Enterprise Linux 8 | - | - | - | - | -
Ubuntu 20.04 | - | - | - | - | -
PAW | Windows 10 V1R16, Google Chrome V1R15 | Windows 10 1.9.0, Google Chrome 2.0.0, Firefox 1.0.0 | Windows 10 21H2, Windows 10 16082019, Edge 85 | SiM-08202, SiSyPHuS Version March 2021 (HD, ND, NE, Logging) | 10.2021

The report *Microsoft Office 2016* aggregates the results of all *Microsoft Office 2016 \<Product>* reports.  
The report *Microsoft Windows 10 BSI* aggregates the results of all *BSI recommendations for Microsoft Windows 10* reports.

Short explanation for BSI (see related links):
 * Normal protection needs standalone computer (NE)
 * Normal protection needs domain member (ND)
 * Increased protection needs domain member (HD)
 * Logging and forensics for all profiles (Logging)

## How to install
We offer several ways of how you can use our free of charge AuditTAP. 
Find several detailed explanations below and use them as follows:

* Manual installation - use the manual way in case you do not have internet connectivity on the system you want to check. We are aware of these "non connected" scenarios for example in datacenter environments.
* Installation via PSGallery - just install our package directly from PowerShell Gallery.
* New::star:Use our installer to install or update AuditTAP :star:

### Video tutorial
Following the well-known phrase "A picture is worth a thousand words" we visualized AuditTAP-installation in a roughly three minute video.
The first half of the video guides through the process of manual installation, the second half shows installation via PowerShell Gallery.

<div align="center">
   <a href="https://www.youtube-nocookie.com/embed/5fJGdHCxqpM">
     <img src="https://img.youtube.com/vi/5fJGdHCxqpM/0.jpg" 
      alt="How to get a transparent system hardening report?" 
     >
   </a>
</div>

### Manual Installation

See the [Installing a PowerShell module](https://docs.microsoft.com/en-us/PowerShell/scripting/developer/module/installing-a-PowerShell-module) guide for more specific instructions.

1. Download the most [recent release](https://github.com/fbprogmbh/Audit-Test-Automation/releases/latest)

2. Extract the archive, for example by using the following commands in PowerShell or by using your favourite unzipping toolset.  
When using PowerShell, please check correct version number with below code example.

```PowerShell
Expand-Archive -Path ".\Audit-Test-Automation-5.1.zip" -DestinationPath "AuditTAP"
```
3. Copy `ATAPAuditor` and `ATAPHtmlReport` modules to any of the paths of `$env:PSModulePath`.

### Installation from PS Gallery
Simple and straight-forward. Install AuditTAP with a single line of code.
```PowerShell
Install-Module -Name ATAPAuditor
```

### Installer

Download the installer from the [releases](https://github.com/fbprogmbh/Audit-Test-Automation/releases) page. The wizard will guide you through the installation steps to install the necessary modules, along with a convenient Start-menu shortcut.

### Linux
For usage on Linux systems a PowerShell installation is required. The necessary steps depend on the Linux distribution and is documented [here](https://docs.microsoft.com/en-us/PowerShell/scripting/install/installing-PowerShell-on-linux). Once PowerShell is installed proceed with a [manual](#manual-installation) installation or using [PS Gallery](#installation-from-ps-gallery).

## Usage

Optionally, import `ATAPAuditor` module:

```PowerShell
Import-Module -Name ATAPAuditor
```

By default the module creates a new report in `Documents\ATAPReports` folder. A list of all available reports can be found in [above table](#reports). Just substitute the `ReportName` with the name of the benchmark. Append `-Path` to specify output folder.

**Examples:**
```PowerShell
Save-ATAPHtmlReport -ReportName "Microsoft IIS10"
Save-ATAPHtmlReport -ReportName "Google Chrome" -Path C:\Users\Public\Documents\ATAPReports\report_google_chrome.html
```
Pro-Tip: After typing *Save-ATAPHtmlReport -ReportName*, use the keyboard shortcut <ctrl> + <space> and all available parameters will be offered, allowing you to select a report with your arrow-keys.

The `ATAPAuditor` module also provides a simple menu based runner for reports. It can be found in `ATAPAuditor\Helpers\Menu.ps1`. When using the Windows based installer, a shortcut can be found in the start menu.

## Good to know

* Make sure your execution policy is set to at least remoteSigned (the scripts are not digitally signed)

```PowerShell
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```

* `ATAPAuditor` has a dependency on `ATAPHtmlReport`.
* Some reports take more than a few seconds because hundreds of individual settings and controls are checked. Please be patient, the result will satisfy your needs 😉
* If you used old versions of AuditTAP you may want to clean up your modules. Be sure you have not integrated AuditTAP functionality in reporting processes. In order to accomplish this task you can use the following script.

```PowerShell
# Remove all old AuditTAP Reports if available
$collection = @("ATAPHtmlReport","Excel2016Audit","GoogleChromeAudit","IIS8Audit","IIS10Audit","MicrosoftIE11Audit","MozillaFirefoxAudit","Outlook2016Audit","Powerpoint2016Audit","Skype4Business2016Audit","SQL2016Benchmarks","Windows10Audit","Windows10GDPRAudit","WindowsServer2016Audit","Word2016Audit")
ForEach ($item in $collection)
{
  if (Get-Module -ListAvailable -Name $item)
  {
    # Module found, so remove it
    $installPath = Get-Module -ListAvailable $item | Select-Object -ExpandProperty Path | Split-Path -Parent
    Remove-Item -Path $installPath -Recurse -Force -Confirm:$false
  }
  else
  {
    # Module not installed, do nothing and take next item
  }
}
```

## Sample reports

You can find several sample reports in the "Samples" folder.

## Customization

You can change the default folder for `Save-ATAPHtmlReport`, which is `Documents\ATAPReports`, by creating and later editing the environment variable `ATAPReportPath`. 
Environment variables can be set for different scopes - please choose the one that fits your needs. The following samples will set the default path to 'C:\ATAPReports'.

Temporary scope: CurrentSession
```PowerShell
$env:ATAPReportPath = 'C:\ATAPReports'
```

Permanent scope: CurrentUser
```PowerShell
[System.Environment]::SetEnvironmentVariable('ATAPReportPath','C:\ATAPReports',[System.EnvironmentVariableTarget]::User)
```
Permanent scope: Machine
```PowerShell
[System.Environment]::SetEnvironmentVariable('ATAPReportPath','C:\ATAPReports',[System.EnvironmentVariableTarget]::Machine)
```

## Related links

### AuditTAP information

* GitHub-Link: https://github.com/fbprogmbh/Audit-Test-Automation
* AuditTAP landing page: https://www.fb-pro.com/audit-tap-product-information
* YouTube channel with more videos: https://www.youtube.com/channel/UCFolaYgClJ005glpn5owRUg

### Hardening recommendations in general
* #NoCodeHardening: https://www.nocodehardening.com
* BSI SiSyPHus: https://www.bsi.bund.de/EN/Topics/Cyber-Security/Recommendations/SiSyPHuS_Win10/SiSyPHuS_node.html
* Center for Internet Security: https://www.cisecurity.org/
* DISA STIGs: https://public.cyber.mil/stigs/
* Microsoft Security baselines: https://techcommunity.microsoft.com/t5/microsoft-security-baselines/bg-p/Microsoft-Security-Baselines

 ## Questions, issues or project support
Please check the [FAQ-section](https://github.com/fbprogmbh/Audit-Test-Automation/tree/master/FAQ) first before opening an issue or contacting us.

*  For questions or issues regarding AuditTAP please use GitHub issue tracker.
*  For questions regarding project support please write a short mail to team@fb-pro.com 
