-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1049.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  local l_0_1, l_0_2 = (bm.get_process_relationships)()
  if l_0_1 ~= nil then
    for l_0_6,l_0_7 in ipairs(l_0_1) do
      if l_0_7.cmd_line and ((string.match)((string.lower)(l_0_7.cmd_line), "-outproc") or (string.match)((string.lower)(l_0_7.cmd_line), "-queuereporting_s_machine") or (string.match)((string.lower)(l_0_7.cmd_line), "-queuereporting_s_user") or (string.match)((string.lower)(l_0_7.cmd_line), "-waitforpendingreports")) then
        return mp.CLEAN
      end
    end
  end
  do
    do
      ;
      (bm.request_SMS)(l_0_0.ppid, "m")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
end

