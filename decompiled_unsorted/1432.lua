-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1432.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC10: Overwrote pending register: R0 in 'AssignReg'

do
  if this_sigattrlog[1] and (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC34: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not this_sigattrlog[2] or not (this_sigattrlog[2]).matched or this_sigattrlog[3]) and (this_sigattrlog[3]).matched then
      local l_0_1 = this_sigattrlog[2]
    else
    end
    -- DECOMPILER ERROR at PC58: Overwrote pending register: R0 in 'AssignReg'

    do
      if (not this_sigattrlog[4] or not (this_sigattrlog[4]).matched or this_sigattrlog[5]) and (this_sigattrlog[5]).matched then
        local l_0_2 = this_sigattrlog[4]
      else
      end
      -- DECOMPILER ERROR at PC82: Overwrote pending register: R0 in 'AssignReg'

      do
        if (not this_sigattrlog[6] or not (this_sigattrlog[6]).matched or this_sigattrlog[7]) and (this_sigattrlog[7]).matched then
          local l_0_3 = this_sigattrlog[6]
        else
        end
        -- DECOMPILER ERROR at PC106: Overwrote pending register: R0 in 'AssignReg'

        do
          if (not this_sigattrlog[8] or not (this_sigattrlog[8]).matched or this_sigattrlog[9]) and (this_sigattrlog[9]).matched then
            local l_0_4 = this_sigattrlog[8]
          else
          end
          -- DECOMPILER ERROR at PC130: Overwrote pending register: R0 in 'AssignReg'

          do
            if (not this_sigattrlog[10] or not (this_sigattrlog[10]).matched or this_sigattrlog[11]) and (this_sigattrlog[11]).matched then
              local l_0_5, l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = this_sigattrlog[10]
            else
            end
            if this_sigattrlog[12] and (this_sigattrlog[12]).matched then
              do return mp.CLEAN end
              -- DECOMPILER ERROR at PC149: Confused about usage of register: R0 in 'UnsetPending'

              if not this_sigattrlog[12] or not (this_sigattrlog[12]).ppid then
                return mp.CLEAN
              end
              -- DECOMPILER ERROR at PC157: Confused about usage of register: R0 in 'UnsetPending'

              if (MpCommon.IsFriendlyProcess)((this_sigattrlog[12]).ppid) then
                return mp.CLEAN
              end
              -- DECOMPILER ERROR at PC164: Confused about usage of register: R0 in 'UnsetPending'

              local l_0_11 = nil
              if not (this_sigattrlog[12]).utf8p2 then
                return mp.CLEAN
              end
              -- DECOMPILER ERROR at PC172: Confused about usage of register: R1 in 'UnsetPending'

              local l_0_12 = nil
              if not (string.match)((this_sigattrlog[12]).utf8p2, "(%d+);regionsize:") then
                return mp.CLEAN
              end
              local l_0_13 = nil
              ;
              (mp.TriggerScanResource)("ems", (string.format)("%s,address:%s,size:0", l_0_11.ppid, (string.match)((this_sigattrlog[12]).utf8p2, "(%d+);regionsize:")))
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end

