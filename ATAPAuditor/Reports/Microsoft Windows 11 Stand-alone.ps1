[Report] @{
	Title = "Windows 11 Report"
	ModuleName = "ATAPAuditor"
	BasedOn = @(
		"CIS Microsoft Windows 11 Stand-alone Benchmark, Version: 1.0.0, Date: 2022-11-15"
		"BSI SiM-08202 Client unter Windows 10, Version: 1, Date: 2017-09-13"
        "Configuration Recommendations for Hardening of Windows 10 Using Built-in Functionalities: Version 1.3, Date: 2021-05-03"
		"SiSyPHuS Recommendations for Telemetry Components: Version 1.1, Date: 2019-07-31"
		"TEAL recommendations 'Ciphers Protocols and Hashes Benchmark', Version 1.1.0, Date: 2021-04-15"
		"TEAL recommendations 'Enhanced settings', Version 1.1.0, Date: 2023-02-24"
	)
	Sections = @(
		[ReportSection] @{
			Title = "CIS Stand-alone Benchmarks"
			Description = "This section contains all benchmarks from CIS"
			SubSections = @(
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 11-Stand-alone-CIS-1.0.1#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 11-Stand-alone-CIS-1.0.1#AuditPolicies"
				}
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 11-Stand-alone-CIS-1.0.1#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'Security Options'
					AuditInfos = Test-AuditGroup "Microsoft Windows 11-Stand-alone-CIS-1.0.1#SecurityOptions"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 11-Stand-alone-CIS-1.0.1#UserRights"
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
			Title = 'BSI Benchmarks SiSyPHus-BSI'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHus-BSI-V1.1#RegistrySettings"
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
				[ReportSection] @{
					Title = 'Security Options'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10 SiSyPHuS NE-BSI-1.3#SecurityOptions"
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