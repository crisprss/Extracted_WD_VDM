-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19854.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 and ((l_0_0.image_path):lower()):find("mousocoreworker.exe") then
  return mp.CLEAN
end
TrackPidAndTechniqueBM("BM", "T1003", "credapi_wuauclt")
add_parents()
reportSessionInformation()
return mp.INFECTED

