-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3946.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_2, l_0_7 = nil, nil
    local l_0_0, l_0_3, l_0_5 = nil
  end
  do
    if (this_sigattrlog[2]).matched then
      local l_0_1, l_0_4, l_0_6 = l_0_2, (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC21: Confused about usage of register: R1 in 'UnsetPending'

    -- DECOMPILER ERROR at PC23: Confused about usage of register: R2 in 'UnsetPending'

    if not l_0_1 or not l_0_4 or not l_0_6 then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC30: Confused about usage of register: R2 in 'UnsetPending'

    local l_0_8 = nil
    if not (string.match)(l_0_6, "/([^/]+)$") then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC40: Confused about usage of register: R1 in 'UnsetPending'

    if (string.find)(l_0_4, (string.match)(l_0_6, "/([^/]+)$"), 1, true) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

