-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1747.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[2]).matched then
    local l_0_0 = (this_sigattrlog[2]).utf8p1
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_1 = l_0_0:lower()
  do
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC21: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC22: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC23: Overwrote pending register: R3 in 'AssignReg'

    for l_0_6,l_0_7 in ("\\windows\\system32")("%system%\\") do
      if contains(l_0_1, l_0_7, true) then
        return mp.CLEAN
      end
    end
    ;
    (bm.add_related_file)(l_0_1)
    do return mp.INFECTED end
    -- WARNING: undefined locals caused missing assignments!
  end
end

