-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10422.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() >= 227584 and (mp.getfilesize)() <= 235040 then
  return mp.INFECTED
end
return mp.CLEAN

