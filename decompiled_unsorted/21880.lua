-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21880.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_3, l_0_5, l_0_7 = nil, nil, nil, nil
  l_0_7 = this_sigattrlog
  l_0_7 = l_0_7[1]
  l_0_1 = l_0_7.utf8p2
  local l_0_2, l_0_4, l_0_6, l_0_8 = nil
else
end
do
  if not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or not contains((this_sigattrlog[2]).utf8p2, "/command/base64/") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC44: Confused about usage of register: R1 in 'UnsetPending'

  local l_0_9 = (this_sigattrlog[2]).utf8p1
  if (string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}") == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC55: Confused about usage of register: R2 in 'UnsetPending'

  local l_0_10 = nil
  -- DECOMPILER ERROR at PC62: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC71: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC80: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC89: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC98: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC107: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC116: Confused about usage of register: R3 in 'UnsetPending'

  if (MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")) ~= nil and ((string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "curl", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "wget", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "powershell", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "python", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "mshta", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "certutil", 1, true) or (string.find)((MpCommon.Base64Decode)((string.match)((this_sigattrlog[2]).utf8p2, "Command%/Base64%/(.*)\"?\'?}")), "cmd", 1, true)) then
    local l_0_11 = nil
    local l_0_12 = nil
    ;
    (nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), {["[" .. l_0_9 .. "]"] = "[" .. l_0_10 .. "]"})
    return mp.INFECTED
  end
  do
    return mp.CLEAN
  end
end

