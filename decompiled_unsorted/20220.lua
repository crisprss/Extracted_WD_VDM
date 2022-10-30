-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20220.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    if (string.sub)(l_0_1, -17) ~= "onedrivesetup.exe" then
      return mp.CLEAN
    end
    if l_0_0 ~= nil and l_0_0.ppid ~= nil then
      (bm.request_SMS)(l_0_0.ppid, "m")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

