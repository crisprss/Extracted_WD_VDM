-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20261.luac 

-- params : ...
-- function num : 0
if not (versioning.IsSeville)() and not (versioning.IsServer)() and (MpCommon.IsSampled)(11000, true, true, true) == false then
  return mp.CLEAN
end
reportSessionInformation()
add_parents()
if reportGenericRansomware("genb_ransom_meta") == mp.INFECTED then
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

