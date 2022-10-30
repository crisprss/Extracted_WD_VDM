-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19741.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil, nil
  end
  -- DECOMPILER ERROR at PC14: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  if (string.match)(l_0_0:lower(), "msiexec%.?e?x?e?\"?\'?%s+(.*)$") == nil then
    return mp.CLEAN
  end
  local l_0_3 = nil
  local l_0_4 = contains
  local l_0_5 = l_0_3
  l_0_4 = l_0_4(l_0_5, {".msi", ".exe"})
  if not l_0_4 then
    l_0_4 = mp
    l_0_4 = l_0_4.INFECTED
    return l_0_4
  end
  l_0_4 = mp
  l_0_4 = l_0_4.CLEAN
  return l_0_4
end

