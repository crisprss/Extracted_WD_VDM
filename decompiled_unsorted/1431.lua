-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1431.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC23: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_4 = (this_sigattrlog[2]).utf8p2
    end
    if not (this_sigattrlog[4]).matched or IsSenseRelatedProc() == true then
      return mp.CLEAN
    end
    if ((string.lower)((this_sigattrlog[4]).utf8p2)):find("tamper", 1, true) then
      return mp.CLEAN
    end
    local l_0_5 = nil
    local l_0_6 = 7200
    AppendToRollingQueue("TamperingHackTools", l_0_5, 1, l_0_6, 100)
    local l_0_7 = nil
    do
      if GetRollingQueueKeys("TamperingAlerts") ~= nil and type(GetRollingQueueKeys("TamperingAlerts")) == "table" then
        local l_0_8 = nil
        for l_0_12,l_0_13 in ipairs(l_0_8) do
          local l_0_9 = "["
          -- DECOMPILER ERROR at PC79: Confused about usage of register: R9 in 'UnsetPending'

          l_0_9 = l_0_9 .. "|" .. R9_PC79
        end
        -- DECOMPILER ERROR at PC83: Confused about usage of register: R4 in 'UnsetPending'

        -- DECOMPILER ERROR at PC91: Confused about usage of register: R4 in 'UnsetPending'

        if l_0_9 .. "]" ~= "[]" then
          (bm.add_related_string)("TamperingAlertsOnMachine", l_0_9 .. "]", bm.RelatedStringBMReport)
          ;
          (bm.add_related_string)("HackToolsOnMachine", l_0_5, bm.RelatedStringBMReport)
          add_parents()
          return mp.INFECTED
        end
      end
      local l_0_14 = nil
      local l_0_15 = GetRollingQueueKeys("TamperingHackTools")
      local l_0_16 = "["
      for l_0_20,l_0_21 in ipairs(l_0_15) do
        local l_0_17 = 0
        -- DECOMPILER ERROR at PC118: Confused about usage of register: R11 in 'UnsetPending'

        l_0_16 = l_0_16 .. "|" .. "|"
        l_0_17 = l_0_17 + 1
      end
      l_0_16 = l_0_16 .. "]"
      -- DECOMPILER ERROR at PC126: Confused about usage of register: R6 in 'UnsetPending'

      if l_0_17 >= 3 then
        (bm.add_related_string)("HackToolsOnMachine", l_0_16, bm.RelatedStringBMReport)
        add_parents()
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

