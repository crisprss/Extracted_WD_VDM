-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21607.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
if not isTamperProtectionOn() then
  return mp.CLEAN
end
local l_0_0 = (mp.GetBruteMatchData)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = l_0_0.match_offset + 1
local l_0_2 = l_0_0.match_offset + 1 + 512
local l_0_3 = ((tostring(l_0_0.is_header and headerpage or footerpage)):sub(l_0_1, l_0_2)):lower()
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = "(windows-defender(-features|-gui)?(\\s|;|$))"
local l_0_5 = false
l_0_5 = (MpCommon.StringRegExpSearch)(l_0_4, l_0_3)
if l_0_5 == false then
  return mp.CLEAN
end
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("Reason", "AggressivePeTrigger", false)
  return mp.LOWFI
end
return mp.INFECTED

