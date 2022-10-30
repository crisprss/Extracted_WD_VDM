-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1644.luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_DISABLE_NW_REPORTING, 1) then
  return mp.CLEAN
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_NW_REPORTING, 1) then
  return mp.INFECTED
end
return mp.CLEAN

