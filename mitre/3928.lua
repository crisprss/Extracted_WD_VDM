-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3928.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = nil
    TrackPidAndTechnique(l_0_0, "T1059.006", "Execution")
    TrackPidAndTechnique(l_0_0, "T1071.001", "CommandAndControl")
    return mp.INFECTED
  end
  return mp.CLEAN
end

