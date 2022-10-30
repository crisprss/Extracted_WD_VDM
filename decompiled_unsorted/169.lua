-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/169.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4 = nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC16: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC34: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC40: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (string.find)(l_0_0, ".dll", -4, true) and (string.find)(l_0_0, "_31bf3856ad364e35\\", 1, true) == nil then
    if (sysio.IsFileExists)(l_0_0) then
      (bm.add_related_file)(l_0_0)
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

