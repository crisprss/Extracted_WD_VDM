-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3011.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "rundll32.exe" and l_0_0 ~= "regsvr32.exe " then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
local l_0_2 = (string.match)(l_0_1, "\\programdata\\(.+)$")
if l_0_2 == nil or #l_0_2 < 1 or (string.find)(l_0_2, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if ((mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)):lower() == l_0_2:lower() then
  (mp.set_mpattribute)("Lua:SuspDllLoad.SA")
  return mp.INFECTED
end
return mp.CLEAN

