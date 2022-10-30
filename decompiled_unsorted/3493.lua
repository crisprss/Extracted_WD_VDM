-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3493.luac 

-- params : ...
-- function num : 0
(MpDetection.ScanResource)("rootcert://")
Infrastructure_ScanFileLessMalware()
Infrastructure_ScanEvotobExclusion()
Infrastructure_ScanDetrahere()
;
(MpDetection.ScanResource)("regkeyvalue://hklm\\software\\policies\\microsoft\\windows\\windowsupdate\\\\WUServer")
;
(MpDetection.ScanResource)("regkeyvalue://hklm\\system\\currentcontrolset\\services\\\\rpcsrv")
;
(MpDetection.ScanResource)("file://%ProgramData%\\Deliver\\sclm.dll")
;
(MpDetection.ScanResource)("regkeyvalue://hklm\\system\\currentcontrolset\\control\\secureboot\\state\\\\policypublisher")
Infrastructure_ScanBITSJobs()
Infrastructure_ScanSuweezy("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_ScanSuweezy("HKLM\\SOFTWARE\\Microsoft\\Microsoft Antimalware\\Exclusions\\Paths")
Infrastructure_NeobarReportPathExclusions("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_NeobarReportPathExclusions("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_SoctuseerReportPathExclusions("HKLM\\SOFTWARE\\Policies\\Microsoft\\Windows Defender\\Exclusions\\Paths")
Infrastructure_SoctuseerReportPathExclusions("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\Paths")
local l_0_0 = (MpCommon.QueryDynamicConfigString)("MpExtraAsepScanLocations")
for l_0_4 in (string.gmatch)(l_0_0, "([^|]+)") do
  (MpDetection.ScanResource)(l_0_4)
end
Infrastructure_ScanWDFirewallBlockRules()
Infrastructure_ScanKryptomixASEPKeyPath()
Infrastructure_AntiTamperingCheckAndRepair()
Infrastructure_MSRTDASTelemetry()
Infrastructure_ScanMpCfgDefaults()
Infrastructure_ScanEmotetV5()
Infrastructure_ScanADFSPath()
Infrastructure_NewmanScan()
Infrastructure_ScanUefiEnvironmentVariables()
Infrastructure_DLAMTelemetry()
Infrastructure_FirstTimeAT()

