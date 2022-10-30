-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1005.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = (bm.get_imagepath)()
local l_0_2 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
if (sysio.IsFileExists)(l_0_2) and not (mp.IsKnownFriendlyFile)(l_0_2, true, false) then
  (bm.request_SMS)(l_0_0.ppid, "h+")
  ;
  (bm.add_action)("SmsAsyncScanEvent", 1)
  ;
  (bm.add_related_file)(l_0_2)
  return mp.INFECTED
end
return mp.CLEAN

