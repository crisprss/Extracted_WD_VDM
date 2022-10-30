-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1567.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[10]).ppid then
  return mp.CLEAN
end
local l_0_0 = ""
if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p1 ~= nil then
  l_0_0 = (MpCommon.PathToWin32Path)((string.lower)((this_sigattrlog[9]).utf8p1))
end
if (mp.IsKnownFriendlyFile)(l_0_0, true, false) then
  return mp.CLEAN
end
if MpCommon.SECURITY_MANDATORY_SYSTEM_RID <= ((MpCommon.GetProcessElevationAndIntegrityLevel)((this_sigattrlog[10]).ppid)).IntegrityLevel then
  return mp.INFECTED
end
return mp.CLEAN

