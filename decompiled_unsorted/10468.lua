-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10468.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() <= 33792 and (mp.getfilesize)() >= 30720 then
  return mp.INFECTED
end
return mp.CLEAN

