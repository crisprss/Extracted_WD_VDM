-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12542.luac 

-- params : ...
-- function num : 0
if peattributes.isdll == false and (mp.getfilesize)() < 1050000 then
  return mp.INFECTED
end
return mp.CLEAN

