-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1147.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[14]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[15]).matched or (this_sigattrlog[16]).matched then
      local l_0_1 = (this_sigattrlog[15]).utf8p2
    else
    end
    -- DECOMPILER ERROR at PC43: Overwrote pending register: R0 in 'AssignReg'

    do
      if not (this_sigattrlog[17]).matched or (this_sigattrlog[18]).matched then
        local l_0_2, l_0_3 = (this_sigattrlog[17]).utf8p2
      end
      -- DECOMPILER ERROR at PC44: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC48: Confused about usage of register: R0 in 'UnsetPending'

      if l_0_2 ~= nil then
        local l_0_4 = nil
        for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_2)) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC56: Confused about usage of register: R6 in 'UnsetPending'

          R6_PC56 = (mp.ContextualExpandEnvironmentVariables)(R6_PC56)
          if (sysio.IsFileExists)(R6_PC56) and not (mp.IsKnownFriendlyFile)(R6_PC56, true, false) then
            (mp.ReportLowfi)(R6_PC56, 3197181569)
          end
        end
      end
      do
        return mp.INFECTED
      end
    end
  end
end

