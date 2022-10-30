-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16923.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 5 and peattributes.epinfirstsect and peattributes.hasappendeddata then
  return mp.INFECTED
end
return mp.SUSPICIOUS

