-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/537.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = nil
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R1 in 'AssignReg'

  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).ppid then
    local l_0_1 = nil
    -- DECOMPILER ERROR at PC28: Overwrote pending register: R2 in 'AssignReg'

    local l_0_2 = nil
    local l_0_3 = l_0_0 .. "|" .. l_0_2
    ;
    (bm.trigger_sig)(l_0_1, l_0_3, l_0_0)
  end
end
do
  return mp.CLEAN
end

