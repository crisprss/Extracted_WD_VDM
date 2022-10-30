-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1742.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("VSSAMSI_CallerPID")
local l_0_1 = (mp.get_mpattributevalue)("VSSAMSI_ProcessStartTime")
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2, l_0_3 = nil, nil
local l_0_4 = (string.format)("pid:%d,ProcessStart:%u", l_0_0, l_0_1)
l_0_2 = (mp.GetProcessCommandLine)(l_0_4)
if l_0_2 ~= nil then
  (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSUntrustedCaller=%s", l_0_2))
  l_0_3 = (mp.GetParentProcInfo)(l_0_4)
  if l_0_3 ~= nil and l_0_3.image_path ~= nil then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSCallerParent=%s", l_0_3.image_path))
  end
  return mp.INFECTED
end
return mp.CLEAN

