-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12379.luac 

-- params : ...
-- function num : 0
if pehdr.Subsystem == 1 then
  (mp.changedetectionname)(805306384)
  return mp.INFECTED
end
return mp.INFECTED

