-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21553.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1, l_0_2 = (bm.get_process_relationships)()
if l_0_2 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_8 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_7.ppid)
    if l_0_0.integrity_level < l_0_8.IntegrityLevel then
      local l_0_9 = (string.lower)(l_0_7.image_path)
      if (string.find)(l_0_9, "\\system32\\mrt.exe", -17, true) or (string.find)(l_0_9, "\\asep_inv.exe", -13, true) or (string.find)(l_0_9, "\\mpsigstub.exe", -14, true) then
        return mp.CLEAN
      end
      ;
      (bm.request_SMS)(l_0_7.ppid, "h+")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1000)
      ;
      (bm.trigger_sig)("Gouda", "Chrome")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

