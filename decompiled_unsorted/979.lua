-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/979.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[5]).utf8p1 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p1)
if (#l_0_0 >= 6 and (string.find)(l_0_0, "\\temp\\", 1, true) ~= nil) or #l_0_0 >= 9 and (string.find)(l_0_0, "\\appdata\\", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

