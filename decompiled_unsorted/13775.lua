-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13775.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2044000 and pehdr.NumberOfSections <= 5 then
  return mp.INFECTED
end
return mp.CLEAN

