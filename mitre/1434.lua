-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1434.luac 

-- params : ...
-- function num : 0
local l_0_0 = GetRealPidForScenario("CMDHSTR")
if IsPidExcluded(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)()
if l_0_1 ~= nil and l_0_1.image_path ~= nil then
  local l_0_2 = l_0_1.image_path
  local l_0_3 = (string.lower)(l_0_2:match("([^\\]+)$"))
  local l_0_4 = {}
  l_0_4["ccmexec.exe"] = true
  l_0_4["gpscript.exe"] = true
  l_0_4["mpcmdrun.exe"] = true
  l_0_4["mssense.exe"] = true
  l_0_4["senseir.exe"] = true
  l_0_4["monitoringhost.exe"] = true
  l_0_4["orchestrator.sandbox.exe"] = true
  if l_0_4[l_0_3] then
    return mp.CLEAN
  end
  local l_0_5 = (mp.GetParentProcInfo)(l_0_1.ppid)
  if l_0_5 ~= nil and l_0_5.image_path ~= nil then
    local l_0_6 = l_0_1.image_path
    local l_0_7 = (string.lower)(l_0_6:match("([^\\]+)$"))
    if l_0_4[l_0_7] then
      return mp.CLEAN
    end
    local l_0_8 = GetTacticsTableForPid(l_0_1.ppid)
    local l_0_9 = GetTacticsTableForPid(l_0_5.ppid)
    if l_0_8.winrshost_childproc or l_0_8.wsmprovhost_childproc or l_0_8.wmi_childproc or l_0_8.remotedropexe_childproc or l_0_8.exec_remotedroppedscript_a or l_0_8.folderguard_blk or l_0_8.folderguard_folder_blk then
      return mp.INFECTED
    end
    if l_0_9.winrshost_childproc or l_0_9.wsmprovhost_childproc or l_0_9.wmi_childproc or l_0_9.remotedropexe_childproc or l_0_9.exec_remotedroppedscript_a or l_0_9.folderguard_blk or l_0_9.folderguard_folder_blk then
      return mp.INFECTED
    end
  end
end
do
  TrackPidAndTechnique(l_0_0, "T1003", "ntdsutil_shadowcopy_access")
  return mp.LOWFI
end

