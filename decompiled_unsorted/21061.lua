-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21061.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Trojan:Script/FakeUpdates.A") and not (mp.get_mpattribute)("Trojan:Script/FakeUpdates.C") and not (mp.get_mpattribute)("Backdoor:JS/FakeUpdates.C!dha") and not (mp.get_mpattribute)("Backdoor:JS/FakeUpdates.D!dha") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_0 and (sysio.IsFileExists)(l_0_1) and not (mp.IsKnownFriendlyFile)(l_0_1, false, false) then
  (mp.ReportLowfi)(l_0_1, 73467367)
  return mp.CLEAN
end
return mp.CLEAN

