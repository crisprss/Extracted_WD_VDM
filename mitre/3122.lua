-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3122.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 then
    local l_0_1, l_0_8 = (string.lower)(l_0_0)
    l_0_8 = l_0_8(l_0_1, "\\shell\\open\\command", "")
    l_0_1 = l_0_8
    l_0_8 = sysio
    l_0_8 = l_0_8.RegExpandUserKey
    l_0_8 = l_0_8(l_0_1)
    local l_0_2 = nil
    l_0_2 = pairs
    l_0_2 = l_0_2(l_0_8)
    for l_0_6,l_0_7 in l_0_2 do
      local l_0_7 = nil
      l_0_7 = AppendToRollingQueue
      l_0_7("PoshevinRelatedRegistries", l_0_6, nil, 5000)
    end
  end
  do
    l_0_8 = string
    l_0_8 = l_0_8.lower
    l_0_8 = l_0_8((bm.get_imagepath)())
    local l_0_9 = nil
    if l_0_8 then
      AppendToRollingQueue(l_0_9, l_0_8, nil, 5000)
    end
    local l_0_10, l_0_11 = nil
    if l_0_9 ~= nil then
      for l_0_15,l_0_16 in l_0_10 do
        local l_0_15, l_0_16 = nil
        -- DECOMPILER ERROR at PC67: Overwrote pending register: R9 in 'AssignReg'

        -- DECOMPILER ERROR at PC70: Overwrote pending register: R9 in 'AssignReg'

        if l_0_15 ~= nil and l_0_15 ~= nil then
          l_0_15(l_0_16, "T1037", "possible_poshevin_child_d")
          -- DECOMPILER ERROR at PC75: Overwrote pending register: R9 in 'AssignReg'

          -- DECOMPILER ERROR at PC76: Overwrote pending register: R9 in 'AssignReg'

          return l_0_15
        end
      end
    end
    do
      -- DECOMPILER ERROR at PC80: Overwrote pending register: R4 in 'AssignReg'

      do return l_0_10.CLEAN end
      -- DECOMPILER ERROR at PC83: Confused about usage of register R5 for local variables in 'ReleaseLocals'

      -- WARNING: undefined locals caused missing assignments!
    end
  end
end

