-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14432.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 2 and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

