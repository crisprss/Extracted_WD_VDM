-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3394.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9 = nil, nil
do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil and (this_sigattrlog[4]).utf8p2 ~= nil then
    local l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC34: Confused about usage of register: R1 in 'UnsetPending'

  if ((string.lower)((this_sigattrlog[4]).utf8p1)):match("software\\classes\\%.([^\\]+)") == nil or #((string.lower)((this_sigattrlog[4]).utf8p1)):match("software\\classes\\%.([^\\]+)") < 4 then
    return mp.CLEAN
  end
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_10 = nil
  -- DECOMPILER ERROR at PC62: Overwrote pending register: R2 in 'AssignReg'

  if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or nil == nil then
    return mp.CLEAN
  end
  local l_0_11, l_0_12, l_0_13 = , nil
  -- DECOMPILER ERROR at PC93: Overwrote pending register: R4 in 'AssignReg'

  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p1 ~= nil and (this_sigattrlog[5]).utf8p2 ~= nil then
    for l_0_17 in (nil):gmatch("%.[gG][eE][tT][sS][tT][rR][iI][nN][gG].+[Ff][Rr][Oo][Mm][Bb][Aa][Ss][Ee]64[Ss][Tt][Rr][Ii][Nn][Gg]%s*%(%s*[\'\"]?(.-)[\'\"]?%s*%)") do
      local l_0_14, l_0_15 = , nil
      -- DECOMPILER ERROR at PC98: Confused about usage of register: R9 in 'UnsetPending'

      if R9_PC98 then
        R9_PC98 = (string.gsub)(R9_PC98, " ", "")
        R9_PC98 = (string.gsub)(R9_PC98, "[\'\"]%+[\'\"]", "")
        if (MpCommon.Base64Decode)(R9_PC98) ~= nil and (MpCommon.Base64Decode)(R9_PC98) ~= "" then
          l_0_15 = ((MpCommon.Base64Decode)(R9_PC98)):match("\\([^\\]+)$")
        end
      end
    end
  end
  do
    -- DECOMPILER ERROR at PC128: Confused about usage of register: R5 in 'UnsetPending'

    if l_0_15 == nil then
      return mp.CLEAN
    else
      -- DECOMPILER ERROR at PC136: Confused about usage of register: R5 in 'UnsetPending'

    end
    local l_0_19 = nil
    -- DECOMPILER ERROR at PC152: Overwrote pending register: R6 in 'AssignReg'

    -- DECOMPILER ERROR at PC178: Confused about usage of register: R6 in 'UnsetPending'

    -- DECOMPILER ERROR at PC184: Confused about usage of register: R6 in 'UnsetPending'

    -- DECOMPILER ERROR at PC185: Unhandled construct in 'MakeBoolean' P3

    if ((this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil and l_0_12:find((string.lower)(l_0_15), 1, true)) or l_0_13:find(l_0_10, 1, true) then
      if nil ~= nil and (sysio.IsFileExists)(nil) then
        (bm.add_threat_file)(nil)
      end
      -- DECOMPILER ERROR at PC194: Confused about usage of register: R6 in 'UnsetPending'

      if (sysio.IsFileExists)(l_0_12) then
        (bm.add_threat_file)(nil)
      end
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

