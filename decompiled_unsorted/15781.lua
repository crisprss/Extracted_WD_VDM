-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15781.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 12 and (pesecs[9]).VirtualSize == 13320 then
  return mp.INFECTED
end
return mp.CLEAN

