-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21146.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched and (this_sigattrlog[7]).matched then
  local l_0_0, l_0_1 = nil, nil
  l_0_1 = (this_sigattrlog[7]).utf8p1
  local l_0_2 = nil
else
end
do
  -- DECOMPILER ERROR at PC46: Overwrote pending register: R0 in 'AssignReg'

  if (not (this_sigattrlog[4]).matched or not (this_sigattrlog[8]).matched or (this_sigattrlog[5]).matched) and (this_sigattrlog[9]).matched then
    local l_0_3, l_0_4, l_0_6, l_0_7, l_0_9, l_0_10, l_0_12, l_0_13 = (this_sigattrlog[4]).utf8p1, (this_sigattrlog[8]).utf8p1
    l_0_6 = this_sigattrlog
    l_0_6 = l_0_6[9]
    l_0_4 = l_0_6.utf8p1
    local l_0_5, l_0_8, l_0_11, l_0_14 = nil
  else
  end
  do
    if (this_sigattrlog[6]).matched and (this_sigattrlog[10]).matched then
      do return mp.CLEAN end
      if not (this_sigattrlog[6]).utf8p1 or not (this_sigattrlog[10]).utf8p1 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC78: Confused about usage of register: R0 in 'UnsetPending'

      -- DECOMPILER ERROR at PC80: Confused about usage of register: R1 in 'UnsetPending'

      if ((this_sigattrlog[6]).utf8p1):lower() ~= ((this_sigattrlog[10]).utf8p1):lower() then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC89: Confused about usage of register: R0 in 'UnsetPending'

      ;
      (bm.add_related_file)((this_sigattrlog[6]).utf8p1)
      return mp.INFECTED
    end
  end
end

