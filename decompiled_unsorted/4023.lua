-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4023.luac 

-- params : ...
-- function num : 0
if 50000000 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC21: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_4, l_0_6 = nil, nil, nil
  l_0_1 = (string.match)(l_0_0, "/([^/]+)$")
  local l_0_2, l_0_5, l_0_7 = nil
  if not l_0_1 then
    l_0_5 = mp
    l_0_5 = l_0_5.CLEAN
    return l_0_5
  end
end
do
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
      local l_0_3 = nil
    end
    -- DECOMPILER ERROR at PC50: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC51: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC59: Confused about usage of register: R1 in 'UnsetPending'

    if (this_sigattrlog[2]).utf8p2 ~= nil and (string.find)((this_sigattrlog[2]).utf8p2, l_0_1, 1, true) and (string.find)(l_0_1, ".ko", -3, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

