-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/980.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[5]).utf8p1 then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p1)
-- DECOMPILER ERROR at PC52: Unhandled construct in 'MakeBoolean' P3

if (#l_0_0 >= 6 and (string.find)(l_0_0, "\\temp\\", 1, true) ~= nil) or #l_0_0 < 9 or #l_0_0 >= 13 and (string.find)(l_0_0, "\\programdata\\", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

