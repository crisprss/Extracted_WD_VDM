-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15177.luac 

-- params : ...
-- function num : 0
if peattributes.no_security and peattributes.isdll and (mp.getfilesize)() < 786432 then
  return mp.INFECTED
end
return mp.CLEAN

