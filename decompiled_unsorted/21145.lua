-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21145.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[10]).matched and (this_sigattrlog[10]).utf8p1 ~= nil then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = nil
  -- DECOMPILER ERROR at PC39: Overwrote pending register: R1 in 'AssignReg'

  if not (this_sigattrlog[11]).matched or (this_sigattrlog[11]).utf8p1 == nil or nil == nil then
    return mp.CLEAN
  end
  local l_0_2 = nil
  for l_0_6,l_0_7 in ipairs({"windir%\\winsxs\\", ":windows\\winsxs\\", "windir%\\servicing\\", ":windows\\servicing\\"}) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC59: Confused about usage of register: R7 in 'UnsetPending'

    if (string.sub)(l_0_1, 2, #R7_PC59) == R7_PC59 or (string.sub)(l_0_2, 2, #R7_PC59) == R7_PC59 then
      return mp.CLEAN
    end
  end
  ;
  (bm.add_related_file)(l_0_2)
  return mp.INFECTED
end

