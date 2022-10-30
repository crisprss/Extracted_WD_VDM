-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21623.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[4]).matched then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[4]).utf8p1
if l_0_0 == nil or #l_0_0 < 3 then
  return mp.CLEAN
end
l_0_0 = (string.lower)(l_0_0)
if (string.find)(l_0_0, "totalrecoveryprosetup.exe", 1, true) ~= nil or (string.find)(l_0_0, "miniconda3.+windows%-x86_64.exe") ~= nil or (string.find)(l_0_0, "llvm%-.+%-win%d%d%.exe$") ~= nil or (string.find)(l_0_0, "\\microsoft\\windows defender.+\\datacollection\\") then
  return mp.CLEAN
end
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
local l_0_1 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
if not (sysio.IsFileExists)(l_0_1) or (mp.IsKnownFriendlyFile)(l_0_1, true, false) == true then
  return mp.CLEAN
end
;
(mp.ReportLowfi)(l_0_1, 31011691)
return mp.INFECTED

