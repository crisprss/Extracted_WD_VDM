-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/45.luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[1]
local l_0_1 = l_0_0.utf8p1
if (string.match)(l_0_1, "Protection:(%d+);") ~= "0" then
  return mp.INFECTED
end
return mp.CLEAN

