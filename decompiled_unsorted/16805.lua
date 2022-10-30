-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16805.luac 

-- params : ...
-- function num : 0
if peattributes.epscn_islast and pehdr.NumberOfSections >= 2 and peattributes.hasstandardentry ~= 1 then
  return mp.INFECTED
end
return mp.CLEAN

