-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1686.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC28: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if not (sysio.IsFileExists)((string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32\\tasks") .. l_0_0)) then
    return mp.CLEAN
  end
  ;
  (mp.TriggerScanResource)("taskscheduler", (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32\\tasks") .. l_0_0))
  return mp.INFECTED
end

