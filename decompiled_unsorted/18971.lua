-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18971.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched then
  local l_0_0, l_0_1 = nil
else
  do
    do return mp.CLEAN end
    local l_0_2 = nil
    if contains(l_0_2, {"sense", "windefend", "wdfilter"}) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

