-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3303.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "svchost.exe" then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == nil or (string.len)(l_0_1) == 0 then
  return mp.CLEAN
end
if (string.lower)((string.match)(l_0_1, "-s%s+([^%s]+)")) ~= "bits" then
  return mp.CLEAN
end
local l_0_2 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_2, "\\notifications\\wpnidm\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_2, "\\microsoft\\systemcertificates\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_2, "\\microsoft\\outlook\\", 1, true) ~= nil then
  return mp.CLEAN
end
if (string.find)(l_0_2, "\\microsoft\\olk\\", 1, true) ~= nil then
  return mp.CLEAN
end
if not (MpCommon.QueryPersistContext)(l_0_2, "DroppedByBitsadmin") and not (MpCommon.QueryPersistContext)(l_0_2, "DroppedByBITS") then
  (MpCommon.AppendPersistContext)(l_0_2, "DroppedByBITS", 0)
end
return mp.CLEAN

