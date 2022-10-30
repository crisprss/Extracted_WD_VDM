-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17680.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 11 and (pesecs[7]).Name == ".app0" and (pesecs[9]).Name == ".app1" and (pesecs[10]).Name == ".app2" then
  return mp.INFECTED
end
return mp.CLEAN

