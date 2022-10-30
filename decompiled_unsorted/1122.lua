-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1122.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
if (nri.GetRawRequestBlob)() == nil then
  return mp.CLEAN
end
l_0_2 = (string.match)((nri.GetRawRequestBlob)(), "%rsp%:Arguments%>%s*([A-Za-z0-9/%+=]+)")
if l_0_2 == nil then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC28: Confused about usage of register: R1 in 'UnsetPending'

-- DECOMPILER ERROR at PC37: Confused about usage of register: R1 in 'UnsetPending'

-- DECOMPILER ERROR at PC46: Confused about usage of register: R1 in 'UnsetPending'

if (MpCommon.Base64Decode)(l_0_2) ~= nil and (string.find)((MpCommon.Base64Decode)(l_0_2), "TargetTypeForDeserialization", 1, true) and (string.find)((MpCommon.Base64Decode)(l_0_2), "system:Convert.FromBase64String", 1, true) and (string.find)((MpCommon.Base64Decode)(l_0_2), "TVqQAAMAAAAE", 1, true) then
  local l_0_3 = nil
  local l_0_4 = nil
  reportHeaders({"Host", "User-Agent"})
  return mp.INFECTED
end
do
  return mp.CLEAN
end

