
[Report] @{
	Title = "Windows Server 2022 Audit Report for Domain Controller"
	ModuleName = "ATAPAuditor"
	BasedOn = @(
		"Security baseline for Microsoft Windows Server 2022, Version: FINAL, Date 2021-09-27"
		"TEAL recommendations 'Ciphers Protocols and Hashes Benchmark', Version 1.1.0, Date: 2021-04-15"
		"TEAL recommendations 'Enhanced settings', Version 1.1.0, Date: 2023-02-24"
	)
	Sections = @(
		[ReportSection] @{
			Title = "Microsoft Benchmarks Domain Controller"
			Description = "This section contains all benchmarks from Microsoft"
			SubSections = @(
				[ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2022 Domain Controller-Microsoft-2022#RegistrySettings"
				}
				[ReportSection] @{
					Title = "User Rights Assignment"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2022 Domain Controller-Microsoft-2022#UserRights"
				}
				[ReportSection] @{
					Title = "Account Policies"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2022 Domain Controller-Microsoft-2022#AccountPolicies"
				}
				[ReportSection] @{
					Title = " Advanced Audit Policy Configuration"
					AuditInfos = Test-AuditGroup "Microsoft Windows Server 2022 Domain Controller-Microsoft-2022#AuditPolicies"
				}
			)
		}
		[ReportSection] @{
			Title = 'TEAL recommendations'
			Description = 'This section contains the TEAL recommendations.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Ciphers Suites and Hashes'
					AuditInfos = Test-AuditGroup "CiphersProtocolsHashesBenchmark-FBPro-1.1.0#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'Enhanced security settings'
					AuditInfos = Test-AuditGroup "Enhanced security settings-FBPro-1.0#UserRights"
				}
			)
		}
	)
}
