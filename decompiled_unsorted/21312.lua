-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21312.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("VSSAMSI_CallerPID")
local l_0_1 = (mp.get_mpattributevalue)("VSSAMSI_ProcessStartTime")
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = nil
local l_0_3 = (string.format)("pid:%d,ProcessStart:%u", l_0_0, l_0_1)
l_0_2 = (mp.GetProcessCommandLine)(l_0_3)
do
  if l_0_2 ~= nil then
    local l_0_4 = {}
    ;
    (table.insert)(l_0_4, l_0_3)
    if (MpCommon.GetPersistContextCountNoPath)("vssamsipid") > 0 then
      (MpCommon.OverwritePersistContextNoPath)("vssamsipid", l_0_4, 120)
    else
      ;
      (MpCommon.SetPersistContextNoPath)("vssamsipid", l_0_4, 120)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

