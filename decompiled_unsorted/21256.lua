-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21256.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
if (string.len)(l_0_1) > 5120 then
  return mp.CLEAN
end
local l_0_2 = (string.match)(l_0_1, "(PAAjA[a-zA-Z0-9%+/]+=-)")
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.Base64Decode)(l_0_2)
if l_0_3 == nil then
  return mp.CLEAN
end
l_0_3 = (string.gsub)(l_0_3, "%z", "")
l_0_3 = (string.lower)((string.gsub)(l_0_3, " ", ""))
if (string.find)(l_0_3, "add-mppreference", 1, true) and (string.find)(l_0_3, "-exclusionpath@($env:userprofile,$env:systemdrive)", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

