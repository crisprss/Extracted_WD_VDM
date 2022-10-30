-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20938.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC61: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p1 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p1 ~= nil then
      local l_0_1 = (mp.ContextualExpandEnvironmentVariables)((string.lower)((this_sigattrlog[2]).utf8p1))
    end
    -- DECOMPILER ERROR at PC62: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC71: Confused about usage of register: R0 in 'UnsetPending'

    if (string.find)((string.lower)(l_0_1), ":program files", 1, true) == nil then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

