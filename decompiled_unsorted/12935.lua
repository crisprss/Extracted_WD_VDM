-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12935.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.ImageBase == 675807232 then
  return mp.INFECTED
end
return mp.CLEAN

