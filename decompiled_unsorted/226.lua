-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/226.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
local l_0_1 = "/nmap"
if l_0_0:sub(-#l_0_1) ~= l_0_1 then
  return mp.INFECTED
end
return mp.CLEAN

