-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1329.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 6)
if l_0_0 == true and l_0_1 == "#E5EmergencyAntiTampering" then
  set_research_data("Reason", "E5EmergencyAntiTampering", false)
  return mp.LOWFI
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("Reason", "AggressivePeTrigger", false)
  return mp.LOWFI
end
return mp.CLEAN

