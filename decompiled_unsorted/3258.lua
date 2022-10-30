-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3258.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe and not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0 == nil or #l_0_0 < 9 then
  return mp.CLEAN
end
l_0_0 = l_0_0:lower()
if l_0_0:find("\\programdata\\", 1, true) == nil then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0, "\\programdata\\(.+)$")
if l_0_1 == nil or #l_0_1 < 1 or (string.find)(l_0_1, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.sub)(l_0_0, 0, 4) == "\\\\?\\" then
  l_0_0 = (string.sub)(l_0_0, 5)
end
local l_0_2 = (string.match)(l_0_0, "(.+)\\programdata\\.+$")
if l_0_2 == nil or #l_0_2 < 1 or (string.find)(l_0_2, "\\", 1, true) ~= nil then
  return mp.CLEAN
end
if peattributes.isdll then
  (mp.set_mpattribute)("Lua:SuspiciousFileInProgramDataFolder.SA!dll")
else
  if peattributes.isexe then
    (mp.set_mpattribute)("Lua:SuspiciousFileInProgramDataFolder.SA!exe")
  end
end
return mp.INFECTED

