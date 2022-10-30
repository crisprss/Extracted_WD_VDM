-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3612.luac 

-- params : ...
-- function num : 0
GetRuleInfo = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0.Name = "Block credential stealing from the Windows local security authority subsystem (lsass.exe)"
  l_1_0.Description = "Windows Defender Exploit Guard detected an attempt to extract credentials from LSASS."
  l_1_0.NotificationDedupingInterval = 14400
  l_1_0.NotificationDedupingScope = HIPS.DEDUPE_SCOPE_ALL
  return l_1_0
end

GetMonitoredLocations = function()
  -- function num : 0_1
  local l_2_0 = {}
  l_2_0["%windir%\\system32\\lsass.exe"] = 2
  return 7, l_2_0
end

GetPathExclusions = function()
  -- function num : 0_2
  local l_3_0 = {}
  l_3_0["%windir%\\system32\\WerFaultSecure.exe"] = 2
  l_3_0["%windir%\\system32\\mrt.exe"] = 2
  l_3_0["%windir%\\system32\\svchost.exe"] = 2
  l_3_0["%windir%\\system32\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["%windir%\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["%windir%\\system32\\DriverStore\\FileRepository\\*\\NVWMI\\nvWmi64.exe"] = 2
  l_3_0["%programfiles(x86)%\\Microsoft Intune Management Extension\\ClientHealthEval.exe"] = 2
  l_3_0["%programfiles(x86)%\\Microsoft Intune Management Extension\\SensorLogonTask.exe"] = 2
  l_3_0["%programfiles(x86)%\\Microsoft Intune Management Extension\\Microsoft.Management.Services.IntuneWindowsAgent.exe"] = 2
  l_3_0["%programdata%\\Microsoft\\Windows Defender Advanced Threat Protection\\DataCollection\\*\\OpenHandleCollector.exe"] = 2
  l_3_0["%programfiles%\\WindowsApps\\Microsoft.GamingServices_*\\gamingservices.exe"] = 2
  l_3_0["%programfiles(x86)%\\Cisco\\Cisco AnyConnect Secure Mobility Client\\vpnagent.exe"] = 2
  l_3_0["%programfiles(x86)%\\Zoom\\bin\\CptHost.exe"] = 2
  l_3_0["%programfiles(x86)%\\Microsoft\\EdgeUpdate\\MicrosoftEdgeUpdate.exe"] = 2
  l_3_0["%programfiles(x86)%\\Microsoft\\Edge\\Application\\*\\Installer\\setup.exe"] = 2
  l_3_0["%programfiles(x86)%\\Google\\Update\\GoogleUpdate.exe"] = 2
  l_3_0["%programfiles(x86)%\\Splunk\\bin\\splunkd.exe"] = 2
  l_3_0["%programfiles(x86)%\\Zscaler\\ZSAUpm\\ZSAUpm.exe"] = 2
  l_3_0["%programfiles(x86)%\\Fortinet\\FortiClient\\FortiESNAC.exe"] = 2
  l_3_0["%programfiles(x86)%\\FireEye\\xagt\\xagt.exe"] = 2
  l_3_0["%programfiles(x86)%\\Autodesk\\Autodesk Desktop App\\AdAppMgrSvc.exe"] = 2
  l_3_0["%programfiles(x86)%\\Dropbox\\Update\\DropboxUpdate.exe"] = 2
  l_3_0["%programfiles(x86)%\\HP\\HP Touchpoint Analytics Client\\Provider Data Sources\\ProcInfo\\ProcInfo.exe"] = 2
  l_3_0["%programfiles(x86)%\\Common Files\\Adobe\\AdobeGCClient\\AGMService.exe"] = 2
  l_3_0["%programfiles(x86)%\\Tanium\\Tanium Client\\Tools\\Detect3\\TaniumDetectEngine.exe"] = 2
  l_3_0["%programfiles(x86)%\\Airwatch\\AgentUI\\AWProcessCommands.exe"] = 2
  l_3_0["%programfiles(x86)%\\Bit9\\Parity Agent\\Parity.exe"] = 2
  l_3_0["%programfiles(x86)%\\Arctic Wolf Networks\\Agent\\ossec-agent.exe"] = 2
  l_3_0["%programfiles(x86)%\\Cordaware\\Infoband\\Infoclient.exe"] = 2
  l_3_0["%programfiles(x86)%\\Splunk\\bin\\splunk-regmon.exe"] = 2
  l_3_0["%programfiles(x86)%\\Lenovo\\VantageService\\*\\LenovoVantage-(LenovoBoostSystemAddin).exe"] = 2
  l_3_0["%programfiles(x86)%\\Micro Focus\\Discovery Agent\\bin32\\discagnt.exe"] = 2
  l_3_0["%programfiles(x86)%\\Hewlett-Packard\\Discovery Agent\\bin32\\discagnt.exe"] = 2
  l_3_0["%programfiles(x86)%\\Micro Focus\\Discovery Agent\\Plugins\\usage\\discusge.exe"] = 2
  l_3_0["%programfiles(x86)%\\Hewlett-Packard\\Discovery Agent\\Plugins\\usage\\discusge.exe"] = 2
  l_3_0["%programfiles%\\Avecto\\Privilege Guard Client\\DefendpointService.exe"] = 2
  l_3_0["%programfiles%\\Intel\\SUR\\QUEENCREEK\\x64\\esrv_svc.exe"] = 2
  l_3_0["%programfiles%\\Microsoft Monitoring Agent\\Agent\\HealthService.exe"] = 2
  l_3_0["%programfiles%\\Microsoft Monitoring Agent\\Agent\\MOMPerfSnapshotHelper.exe"] = 2
  l_3_0["%programfiles%\\Nexthink\\Collector\\Collector\\nxtsvc.exe"] = 2
  l_3_0["%programfiles%\\Splunk\\bin\\splunkd.exe"] = 2
  l_3_0["%programfiles%\\Azure Advanced Threat Protection Sensor\\*\\Microsoft.Tri.Sensor.Updater.exe"] = 2
  l_3_0["%programfiles%\\common files\\microsoft shared\\ClickToRun\\Updates\\*\\OfficeClickToRun.exe"] = 2
  l_3_0["%programfiles%\\Zscaler\\ZSAUpm\\ZSAUpm.exe"] = 2
  l_3_0["%programfiles%\\Fortinet\\FortiClient\\FortiESNAC.exe"] = 2
  l_3_0["%programfiles%\\FireEye\\xagt\\xagt.exe"] = 2
  l_3_0["%programfiles%\\Autodesk\\Autodesk Desktop App\\AdAppMgrSvc.exe"] = 2
  l_3_0["%programfiles%\\Qualys\\QualysAgent\\QualysAgent.exe"] = 2
  l_3_0["%programfiles%\\Altiris\\Altiris Agent\\AeXNSAgent.exe"] = 2
  l_3_0["%programfiles%\\VMware\\VMware Tools\\vmtoolsd.exe"] = 2
  l_3_0["%programfiles%\\Dell\\DTP\\InstrumentationSubAgent\\Dell.TechHub.Instrumentation.SubAgent.exe"] = 2
  l_3_0["%programfiles%\\Rapid7\\Insight Agent\\components\\insight_agent\\*\\ir_agent.exe"] = 2
  l_3_0["%programfiles%\\Microsoft RDInfra\\RDMonitoringAgent_*\\Agent\\MonAgentCore.exe"] = 2
  l_3_0["%programfiles%\\BMCSoftware\\Client Management\\Client\\bin\\mtxagent.exe"] = 2
  l_3_0["%programfiles%\\DisplayLink Core Software\\DisplayLinkHotDeskService.exe"] = 2
  l_3_0["%programfiles%\\ManageSoft\\Tracker\\ndtrack.exe"] = 2
  l_3_0["C:\\Packages\\Plugins\\Microsoft.Azure.Diagnostics.IaaSDiagnostics\\*\\Monitor\\x64\\MonAgentCore.exe"] = 2
  l_3_0["%windir%\\CCM\\CcmExec.exe"] = 2
  l_3_0["%windir%\\CCM\\SensorLogonTask.exe"] = 2
  l_3_0["%windir%\\System32\\DriverStore\\FileRepository\\hpanalyticscomp.*\\x64\\Provider Data Sources\\ProcInfo\\ProcInfo.exe"] = 2
  l_3_0["%windir%\\system32\\RtkAudUService64.exe"] = 2
  l_3_0["%windir%\\Temp\\Ctx-*\\Extract\\TrolleyExpress.exe"] = 2
  l_3_0["%programdata%\\Citrix\\Citrix Receiver*\\TrolleyExpress.exe"] = 2
  l_3_0["%programdata%\\Citrix\\Citrix Workspace *\\TrolleyExpress.exe"] = 2
  l_3_0["%programfiles(x86)%\\Citrix\\Citrix Workspace *\\TrolleyExpress.exe"] = 2
  l_3_0["%temp%\\Ctx-*\\Extract\\TrolleyExpress.exe"] = 2
  l_3_0["%programfiles%\\Quest\\ChangeAuditor\\Agent\\NPSrvHost.exe"] = 2
  l_3_0["%programfiles%\\Quest\\ChangeAuditor\\Service\\ChangeAuditor.Service.exe"] = 2
  l_3_0["%windir%\\system32\\DriverStore\\FileRepository\\hpqkbsoftwarecompnent.inf_amd64_*\\HotKeyServiceUWP.exe"] = 2
  l_3_0["%windir%\\system32\\CompatTelRunner.exe"] = 2
  l_3_0["%programfiles(x86)%\\Printer Properties Pro\\Printer Installer Client\\PrinterInstallerClient.exe"] = 2
  l_3_0["%programfiles%\\Printer Properties Pro\\Printer Installer Client\\PrinterInstallerClient.exe"] = 2
  l_3_0["%programfiles(x86)%\\Zscaler\\ZSATunnel\\ZSATunnel.exe"] = 2
  l_3_0["%programfiles%\\Zscaler\\ZSATunnel\\ZSATunnel.exe"] = 2
  l_3_0["%programfiles(x86)%\\ManageSoft\\Security Agent\\mgssecsvc.exe"] = 2
  l_3_0["%programfiles%\\ManageSoft\\Security Agent\\mgssecsvc.exe"] = 2
  l_3_0["%programfiles(x86)%\\Snow Software\\Inventory\\Agent\\snowagent.exe"] = 2
  l_3_0["%programfiles%\\Snow Software\\Inventory\\Agent\\snowagent.exe"] = 2
  l_3_0["c:\\windows\\system32\\WerFaultSecure.exe"] = 2
  l_3_0["c:\\windows\\system32\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["c:\\windows\\SysWOW64\\wbem\\WmiPrvSE.exe"] = 2
  l_3_0["\\Device\\HarddiskVolume?\\Windows\\System32\\svchost.exe"] = 2
  l_3_0["\\Device\\HarddiskVolume?\\Windows\\System32\\wbem\\wmiprvse.exe"] = 2
  l_3_0["%windir%\\system32\fsiso.exe"] = 2
  return l_3_0
end

GetCommandLineExclusions = function()
  -- function num : 0_3
  local l_4_0 = "^\\\"?.:\\\\windows\\\\system32\\\\werfault\\.exe\\\"?((?!\\-s).)*$"
  local l_4_1 = {}
  l_4_1[l_4_0] = 0
  return l_4_1
end


