-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20351.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  if not (this_sigattrlog[4]).matched or (string.lower)((this_sigattrlog[4]).utf8p1) ~= nil then
    if (string.find)((string.lower)((this_sigattrlog[4]).utf8p1), "\\microsoft.net\\framework") ~= nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC39: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

    if (sysio.IsFileExists)((string.lower)((this_sigattrlog[4]).utf8p1)) then
      (bm.add_related_file)((string.lower)((this_sigattrlog[4]).utf8p1))
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

