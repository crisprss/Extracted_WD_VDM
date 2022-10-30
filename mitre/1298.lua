-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1298.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil or #l_0_0 < 12 or (string.lower)((string.sub)(l_0_0, -12)) ~= "\\taskmgr.exe" then
  return mp.CLEAN
end
TrackPidAndTechnique("BM", "T1003.001", "credentialdumping_concrete", 86400)
return mp.INFECTED

