-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4121.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).wp2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).wp2 ~= nil then
      local l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
    else
    end
    -- DECOMPILER ERROR at PC88: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).wp2 == nil or (this_sigattrlog[5]).matched) and (this_sigattrlog[5]).wp2 ~= nil then
        local l_0_2, l_0_3, l_0_4, l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10, l_0_11 = (string.lower)((this_sigattrlog[4]).utf8p2)
      else
      end
      -- DECOMPILER ERROR at PC116: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC125: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC134: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC143: Confused about usage of register: R0 in 'UnsetPending'

      if (not (this_sigattrlog[6]).matched or (this_sigattrlog[6]).wp2 == nil or (string.lower)((this_sigattrlog[6]).utf8p2) ~= nil) and (this_sigattrlog[1]).matched and ((string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "mkinitramfs ", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), "u-boot.imx", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".iso ", 1, true) or (string.find)((string.lower)((this_sigattrlog[6]).utf8p2), ".img ", 1, true)) then
        return mp.CLEAN
      end
      reportRelatedBmHits()
      addRelatedProcess()
      TrackPidAndTechniqueBM("BM", "T1561.001", "Impact_DiskWiper")
      RemediateProcessTreeForLinux()
      return mp.INFECTED
    end
  end
end
