-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3992.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
local l_0_1 = (bm.get_current_process_startup_info)()
local l_0_2 = (mp.GetParentProcInfo)(l_0_1.ppid)
if l_0_2 ~= nil then
  l_0_0 = GetTechniquesCountForPid(l_0_2.ppid)
  if l_0_0 > 4 then
    TrackPidAndTechniqueBM(l_0_2.ppid, "T1018", "Discovery_RemoteSystemDiscovery")
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
return mp.CLEAN

