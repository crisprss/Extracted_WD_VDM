-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20655.luac 

-- params : ...
-- function num : 0
if is_excluded_parent_proc_auto() then
  return mp.CLEAN
end
if (bm.GetSignatureMatchDuration)() > 36000000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.command_line ~= nil then
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 1)
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1003", "tt-thresholdmet")
  return mp.INFECTED
end
return mp.CLEAN

