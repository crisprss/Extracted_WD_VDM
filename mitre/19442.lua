-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19442.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  (MpCommon.RequestSmsOnProcess)(l_0_0.ppid, MpCommon.SMS_SCAN_MED)
  TrackPidAndTechnique(l_0_0.ppid, "T1562.001", "mptamper_av")
end
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

