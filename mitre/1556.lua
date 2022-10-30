-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1556.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC25: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 and l_0_0:find("powershell.+profile%.ps1") then
    bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 1)
    TrackPidAndTechniqueBM((this_sigattrlog[8]).ppid, "T1546.013", "posh_profile_edit")
  end
  return mp.INFECTED
end

