-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14961.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and pehdr.SizeOfImage >= 65536 and pehdr.SizeOfImage <= 98304 then
  return mp.INFECTED
end
return mp.CLEAN

