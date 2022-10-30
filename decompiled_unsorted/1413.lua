-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1413.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[12]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[13]).matched or (this_sigattrlog[14]).matched then
      local l_0_1, l_0_2, l_0_3 = (this_sigattrlog[13]).utf8p1
    end
    if not (this_sigattrlog[15]).matched or IsSenseRelatedProc() == true then
      return mp.CLEAN
    end
    local l_0_4 = (this_sigattrlog[15]).utf8p1
    local l_0_5 = 7200
    AppendToRollingQueue("TamperingAlerts_LimitedSet_B", l_0_4, 1, l_0_5, 5)
    local l_0_6 = nil
    do
      if GetRollingQueueKeys("ThreatsOnMachine_Lua") ~= nil then
        local l_0_7 = nil
        for l_0_11,l_0_12 in ipairs(l_0_7) do
          local l_0_8 = "["
          -- DECOMPILER ERROR at PC60: Confused about usage of register: R9 in 'UnsetPending'

          l_0_8 = l_0_8 .. "|" .. R9_PC60
        end
        -- DECOMPILER ERROR at PC64: Confused about usage of register: R4 in 'UnsetPending'

        ;
        (bm.add_related_string)("TamperingAlertsOnMachine", l_0_4, bm.RelatedStringBMReport)
        ;
        (bm.add_related_string)("ThreatsOnMachine", l_0_8 .. "]", bm.RelatedStringBMReport)
        add_parents()
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

