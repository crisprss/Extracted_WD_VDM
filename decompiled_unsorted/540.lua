-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/540.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[2]).image_path
  local l_0_1 = (this_sigattrlog[2]).ppid
  local l_0_2 = (this_sigattrlog[2]).utf8p2
  local l_0_3 = l_0_1 .. "|" .. l_0_0 .. "|" .. l_0_2
  local l_0_4 = "RemoteInvocation:PSEXEC|" .. l_0_0
  local l_0_5 = reportSessionInformationInclusive()
  AppendToRollingQueue(l_0_4, l_0_1, json_encode(l_0_5), 3600, 100, 1)
  ;
  (bm.trigger_sig)("RemoteInvocation:PSEXEC", l_0_3, l_0_1)
end
do
  reportRelevantUntrustedEntities()
  reportTimingData()
  pcall(bm.ignore_process_start_limits)
  return mp.INFECTED
end

