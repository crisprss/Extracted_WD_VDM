-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12469.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil and (mp.getfilesize)() <= 393216 then
  return mp.INFECTED
end
return mp.CLEAN

