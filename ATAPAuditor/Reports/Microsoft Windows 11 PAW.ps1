[Report] @{
	Title = "Privileged Access Workstation Windows 11 Report"
	ModuleName = "ATAPAuditor"
	BasedOn = @(
        "CIS Microsoft Windows 11 Enterprise Release 21H2 Benchmark, Version: 1.0.0,"
        "CIS Google Chrome Benchmark, Version: 2.0.0, Date: 2019-05-17"
        'CIS Mozilla Firefox 38 ESR Benchmark, Version: 1.0.0, Date: 2015-12-31'
		"Configuration Recommendations for Hardening of Windows 10 Using Built-in Functionalities: Version 1.3, Date: 2021-05-03"
        "DISA Google Chrome Security Technical Implementation Guide, Version: V1R15, Date: 2019-01-28"
        "Microsoft Security baseline for Windows 11"
        "Microsoft Edge v99 Security Baseline FINAL, Version: 99, Date: 2022-03-07"
        )
	Sections = @(
		[ReportSection] @{
			Title = 'CIS Benchmarks'
			Description = 'This section contains all benchmarks from CIS.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Windows 11'
					Description = 'This section contains the CIS "Windows 10" Benchmark results.'
                    SubSections = @(
                        [ReportSection] @{
                            Title = 'Registry Settings/Group Policies'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-CIS-1.0.0#RegistrySettings"
                        }
                        [ReportSection] @{
                            Title = 'User Rights Assignment'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-CIS-1.0.0#UserRights"
                        }
                        [ReportSection] @{
                            Title = 'Account Policies'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-CIS-1.0.0#AccountPolicies"
                        }
                        [ReportSection] @{
                            Title = 'Advanced Audit Policy Configuration'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-CIS-1.0.0#AuditPolicies"
                        }
                        [ReportSection] @{
                            Title = 'Security Options'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-CIS-1.0.0#SecurityOptions"
                        }
                    )
				}
				[ReportSection] @{
					Title = 'Google Chrome'
					Description = 'This section contains the CIS "Google Chrome" Benchmark results.'
					SubSections = @(
						[ReportSection] @{
							Title = "Registry Settings/Group Policies"
							AuditInfos = Test-AuditGroup "Google Chrome-CIS-2.0.0#RegistrySettings"
						}
					)
				}
				[ReportSection] @{
					Title = 'Mozilla Firefox'
					Description = 'This section contains the CIS "Mozilla Firefox" Benchmark results.'
					SubSections = @(
						[ReportSection] @{
							Title = "Firefox Preferences"
							AuditInfos = Test-AuditGroup "Mozilla Firefox-CIS-1.0.0.1_1#FirefoxPreferences"
						}
					)
				}
			)
		}
        [ReportSection] @{
			Title = "DISA Recommendations"
			Description = "This section contains the DISA STIG results."
			SubSections = @(
                [ReportSection] @{
					Title = "Registry Settings/Group Policies"
					AuditInfos = Test-AuditGroup "Google Chrome-DISA-V1R15#RegistrySettings"
				}
			)
		}
		[ReportSection] @{
			Title = 'Microsoft Benchmarks'
			Description = 'This section contains all benchmarks from Microsoft.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Windows 11'
					Description = 'This section contains the MICROSOFT "Windows 11" Benchmark results.'
					SubSections = @(
                        [ReportSection] @{
                            Title = 'Registry Settings/Group Policies'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-Microsoft-2022#RegistrySettings"
                        }
                        [ReportSection] @{
                            Title = 'User Rights Assignment'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-Microsoft-2022#UserRights"
                        }
                        [ReportSection] @{
                            Title = 'Account Policies'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-Microsoft-2022#AccountPolicies"
                        }
                        [ReportSection] @{
                            Title = 'Advanced Audit Policy Configuration'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-Microsoft-2022#AuditPolicies"
                        }
                        [ReportSection] @{
                            Title = 'Security Options'
                            AuditInfos = Test-AuditGroup "Microsoft Windows 11-Microsoft-2022#SecurityOptions"
                        }
					)
				}
				[ReportSection] @{
					Title = 'Edge'
					Description = 'This section contains the MICROSOFT "Edge" Benchmark results.'
					SubSections = @(
						[ReportSection] @{
							Title = "Edge"
							AuditInfos = Test-AuditGroup "Microsoft Edge-Microsoft-99#RegistrySettings"
						}
					)
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
			Title = 'BSI BPOL Benchmarks'
			Description = 'This section contains the BSI Benchmark results.'
			SubSections = @(
				[ReportSection] @{
					Title = 'Registry Settings/Group Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-BSI-Bundespolizei#RegistrySettings"
				}
				[ReportSection] @{
					Title = 'User Rights Assignment'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-BSI-Bundespolizei#UserRights"
				}
				[ReportSection] @{
					Title = 'Account Policies'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-BSI-Bundespolizei#AccountPolicies"
				}
				[ReportSection] @{
					Title = 'Advanced Audit Policy Configuration'
					AuditInfos = Test-AuditGroup "Microsoft Windows 10-BSI-Bundespolizei#AuditPolicies"
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
	)
}