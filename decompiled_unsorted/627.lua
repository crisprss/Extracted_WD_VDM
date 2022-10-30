-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/627.luac 

-- params : ...
-- function num : 0
do
  if (pe.get_postemu_sigattr_log_head_size)() > 64 then
    local l_0_0, l_0_1 = 64
  end
  local l_0_2 = nil
  for l_0_6 = 1, l_0_2 do
    local l_0_3 = ""
    -- DECOMPILER ERROR at PC13: Confused about usage of register: R5 in 'UnsetPending'

    if ((pe.get_postemu_sigattr_log_head)(R5_PC13)).attribute == 12320 then
      if ((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1 == nil or ((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1 == "" then
        return mp.CLEAN
      end
      if (string.len)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1) >= 256 then
        return mp.CLEAN
      end
      local l_0_8 = nil
      local l_0_9 = nil
      local l_0_10 = nil
      l_0_3 = l_0_3 .. (string.char)((crypto.bitand)((crypto.CRC32Buffer)(-1, (string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1), 0, #(string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1)), 255), (crypto.bitand)((crypto.shr32)((crypto.CRC32Buffer)(-1, (string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1), 0, #(string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1)), 8), 255), (crypto.bitand)((crypto.shr32)((crypto.CRC32Buffer)(-1, (string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1), 0, #(string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1)), 16), 255), (crypto.shr32)((crypto.CRC32Buffer)(-1, (string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1), 0, #(string.lower)(((pe.get_postemu_sigattr_log_head)(R5_PC13)).p1)), 24))
    end
  end
  -- DECOMPILER ERROR at PC82: Confused about usage of register: R1 in 'UnsetPending'

  if #l_0_3 <= 1 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC90: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC92: Confused about usage of register: R1 in 'UnsetPending'

  local l_0_11 = nil
  ;
  (mp.set_mpattribute)("MpInternal_researchdata=DYNHASH=" .. (crypto.Sha1Buffer)(l_0_3, 0, #l_0_3))
  local l_0_12 = nil
  local l_0_13, l_0_14, l_0_15 = , (MpCommon.SNidSearch)(207, l_0_12)
  if l_0_14 then
    (mp.changedetectionrecid)(R8_PC111)
    return mp.INFECTED
  end
  return mp.CLEAN
end

