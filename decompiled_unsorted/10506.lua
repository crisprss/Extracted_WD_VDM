-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10506.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 851968 and (mp.getfilesize)() <= 917504 then
  return mp.INFECTED
end
return mp.CLEAN

