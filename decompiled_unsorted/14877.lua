-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14877.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 11776 and (mp.getfilesize)() < 15104 and peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

