-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4062.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[8]).matched and (this_sigattrlog[8]).utf8p1 ~= nil then
  local l_0_0 = nil
  taint(l_0_0, "remote_file_created_taint", 3600)
  local l_0_1 = (bm.get_current_process_startup_info)()
  local l_0_2, l_0_3 = (bm.get_process_relationships)(l_0_1.ppid)
  AppendToRollingQueue("queue_pid_taintfactory_a", l_0_1.ppid, 1, 600)
  for l_0_7,l_0_8 in ipairs(l_0_2) do
    (bm.add_related_process)(l_0_8.ppid)
    TrackPidAndTechniqueBM(l_0_8.ppid, "T1105", "CommandAndControl_RemoteFileCopy.A")
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

