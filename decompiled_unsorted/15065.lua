-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15065.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (mp.getfilesize)() >= 80000 and (mp.getfilesize)() <= 90000 then
  return mp.INFECTED
end
return mp.CLEAN

