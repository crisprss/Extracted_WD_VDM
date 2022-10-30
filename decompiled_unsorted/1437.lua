-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1437.luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
do
  if (this_sigattrlog[12]).matched then
    local l_0_0 = false
  end
  -- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

  -- DECOMPILER ERROR at PC24: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[13]).matched or (this_sigattrlog[14]).matched then
      local l_0_1 = nil
    end
    -- DECOMPILER ERROR at PC32: Overwrote pending register: R0 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[15]).matched or (this_sigattrlog[16]).matched then
        local l_0_2 = nil
        l_0_2 = true
      end
      -- DECOMPILER ERROR at PC49: Overwrote pending register: R0 in 'AssignReg'

      -- DECOMPILER ERROR at PC58: Overwrote pending register: R0 in 'AssignReg'

      -- DECOMPILER ERROR at PC67: Overwrote pending register: R0 in 'AssignReg'

      if ((not (this_sigattrlog[17]).matched or (this_sigattrlog[18]).matched) and not (this_sigattrlog[19]).matched) or IsSenseRelatedProc() == true then
        return mp.CLEAN
      end
      local l_0_4 = true
      local l_0_5 = GetRollingQueueKeys("TamperingAlerts_LimitedSet_A")
      local l_0_6 = GetRollingQueueKeys("RemotDropped_Malware")
      local l_0_7 = 7200
      if l_0_4 == true then
        AppendToRollingQueue("TamperingAlerts_LimitedSet_A", l_0_3, 1, l_0_7, 5)
        if l_0_6 ~= nil then
          local l_0_8 = nil
          for l_0_12,l_0_13 in ipairs(l_0_6) do
            local l_0_9 = "["
            -- DECOMPILER ERROR at PC101: Confused about usage of register: R11 in 'UnsetPending'

            l_0_9 = l_0_9 .. 5
          end
          -- DECOMPILER ERROR at PC105: Confused about usage of register: R6 in 'UnsetPending'

          ;
          (bm.add_related_string)("TamperingAlertsOnMachine", l_0_3, bm.RelatedStringBMReport)
          ;
          (bm.add_related_string)("NonTamperingAlertsOnMachine", l_0_9 .. "]", bm.RelatedStringBMReport)
          add_parents()
          return mp.INFECTED
        end
      else
        do
          -- DECOMPILER ERROR at PC133: Confused about usage of register: R5 in 'UnsetPending'

          AppendToRollingQueue("RemotDropped_Malware", l_0_3, 1, l_0_7, l_0_8)
          do
            if l_0_5 ~= nil then
              local l_0_14 = nil
              for l_0_18,l_0_19 in ipairs(l_0_5) do
                local l_0_15 = "["
                -- DECOMPILER ERROR at PC143: Confused about usage of register: R11 in 'UnsetPending'

                l_0_15 = l_0_15 .. l_0_8
              end
              -- DECOMPILER ERROR at PC147: Confused about usage of register: R6 in 'UnsetPending'

              ;
              (bm.add_related_string)("TamperingAlertsOnMachine", l_0_15 .. "]", bm.RelatedStringBMReport)
              ;
              (bm.add_related_string)("NonTamperingAlertsOnMachine", l_0_3, bm.RelatedStringBMReport)
              add_parents()
              return mp.INFECTED
            end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

