-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16683.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.getfilesize)() >= 65536 and (mp.getfilesize)() <= 1048576 and peattributes.no_security then
  return mp.INFECTED
end
return mp.CLEAN

