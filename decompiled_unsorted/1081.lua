-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1081.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
local l_0_0 = (mp.GetBruteMatchData)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.match_offset + 1
local l_0_2 = l_0_0.match_offset + 1 + 512
local l_0_3 = ((tostring(l_0_0.is_header and headerpage or footerpage)):sub(l_0_1, l_0_2)):lower()
if not l_0_3:match("disable%-windowsoptionalfeature") or not l_0_3:match("windows%-defender") then
  return mp.CLEAN
end
if l_0_3:match("windows%-defender%-applicationguard") then
  return mp.CLEAN
end
if isTamperProtectionOn() then
  return mp.INFECTED
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("AggressivePeTrigger", "true", false)
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 6) then
  set_research_data("E5EmergencyAntiTampering", "true", false)
end
return mp.LOWFI

