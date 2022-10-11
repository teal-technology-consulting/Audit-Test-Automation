﻿[Report] @{
	Title = "Windows 10 Report"
	ModuleName = "ATAPAuditor"
	BasedOn = @(
		"CIS Microsoft Windows 10 Enterprise Release 1909 Benchmark, Version: 1.9.0, Date: 2020-08-14"
		"DISA Windows 10 Security Technical Implementation Guide, Version: V1R16, Date: 2019-10-25"
		"CYBERGOVAU Hardening Microsoft Windows 10 version 21H1 Workstations, Version: 10.2020, Date 2020-10-01"
		"Microsoft Security baseline (FINAL) for Windows 10, Version: 21H1, Date: 2021-05-18"
		"BSI SiM-08202 Client unter Windows 10, Version: 1, Date: 2017-09-13"
        "Configuration Recommendations for Hardening of Windows 10 Using Built-in Functionalities: Version 1.3, Date: 2021-05-03"
	)
	Sections = @(
		[ReportSection] @{
			Title = 'CIS Benchmarks'
			Description = 'This section contains the CIS Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#AccountPolicies"
				}
				# [ReportSection] @{
				# 	Title = 'Windows Firewall with Advanced Security'
				# 	AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.8.1#FirewallProfileSettings"
				# }
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CIS-1.9.0#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = "DISA Recommendations"
			Description = "This section contains the DISA STIG results."
			SubSections = @(
				[ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#RegistrySettings"
				}
				[ReportSection] @{
					Title = "User Rights Assignment"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#UserRights"
				}
				[ReportSection] @{
					Title = "Account Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#AccountPolicies"
				}
				[ReportSection] @{
					Title = "Windows Features"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#WindowsOptionalFeatures"
				}
				[ReportSection] @{
					Title = "File System Permissions"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#FileSystemPermissions"
				}
				[ReportSection] @{
					Title = "Registry Permissions"
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-DISA-V1R16#RegistryPermissions"
				}
			)
		}
		[ReportSection] @{
			Title = 'CyberGovAu Benchmarks'
			Description = 'This section contains the CyberGovAu Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CyberGovAu-10.2020#RegistrySettings"
				}
				# [ReportSection] @{
				# 	Title = 'User Rights Assignment'
				# 	AuditInfos = Test-AuditGroup "Microsoft Windows 10-CyberGovAu-10.2020#UserRights"
				# }
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CyberGovAu-10.2020#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-CyberGovAu-10.2020#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'Microsoft Benchmarks'
			Description = 'This section contains the Microsoft Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-21H1#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-21H1#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-21H1#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-Microsoft-21H1#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'BSI Benchmarks SySiPHuS Logging'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS Logging-BSI-1.3#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS Logging-BSI-1.3#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'BSI Benchmarks SySiPHuS HD'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS HD-BSI-1.3#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS HD-BSI-1.3#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS HD-BSI-1.3#AccountPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'BSI Benchmarks SySiPHuS ND'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS ND-BSI-1.3#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS ND-BSI-1.3#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS ND-BSI-1.3#AccountPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'BSI Benchmarks SySiPHuS NE'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS NE-BSI-1.3#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS NE-BSI-1.3#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS NE-BSI-1.3#AccountPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'BSI Benchmarks SiM-08202 - BPOL'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 BSI BPOL#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 BSI BPOL#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 BSI BPOL#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 BSI BPOL#AuditPolicies"
				}
			)
		}
	)
}
