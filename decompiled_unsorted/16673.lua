-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16673.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 8 and (pesecs[1]).VirtualAddress == 4096 then
  return mp.INFECTED
end
return mp.CLEAN

