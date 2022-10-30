-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1399.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 < 12 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  local l_0_4 = ((mp.GetExecutablesFromCommandLine)(l_0_0))
  for l_0_8,l_0_9 in ipairs(l_0_4) do
    local l_0_5 = nil
    -- DECOMPILER ERROR at PC36: Confused about usage of register: R7 in 'UnsetPending'

    if (string.find)(R7_PC36, ":\\users\\", 1, true) and (MpCommon.QueryPersistContext)(R7_PC36, "SystemDropToUserProfile.A") then
      l_0_5 = R7_PC36
      break
    end
  end
  do
    -- DECOMPILER ERROR at PC54: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC56: Confused about usage of register: R2 in 'UnsetPending'

    if l_0_5 == nil or #l_0_5 < 12 then
      return mp.CLEAN
    end
    local l_0_10 = nil
    if IsProcNameInParentProcessTree("BM", {"psexesvc.exe", "wmiprvse.exe", "wmic.exe"}) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

