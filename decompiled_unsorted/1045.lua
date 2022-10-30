-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1045.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC26: Overwrote pending register: R1 in 'AssignReg'

  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_2 = nil
    for l_0_6,l_0_7 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1)) do
      local l_0_3 = nil
      -- DECOMPILER ERROR at PC35: Confused about usage of register: R7 in 'UnsetPending'

      if R7_PC35:len() > 6 and (MpCommon.QueryPersistContext)(R7_PC35, "IOAVHasDiscordUrl") then
        (bm.add_related_file)(R7_PC35)
        if not (MpCommon.QueryPersistContext)(l_0_2, "LargePEInArchiveFromDiscord") then
          (MpCommon.AppendPersistContext)(l_0_2, "LargePEInArchiveFromDiscord", 3600)
          return mp.INFECTED
        end
      end
    end
    return mp.CLEAN
  end
end

