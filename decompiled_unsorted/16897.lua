-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16897.luac 

-- params : ...
-- function num : 0
if (mp.shr32)(pehdr.TimeDateStamp, 22) and (mp.shl32)(pehdr.TimeDateStamp, 22) == 0 then
  (mp.changedetectionname)(805306402)
end
return mp.INFECTED

