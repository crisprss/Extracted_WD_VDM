-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20859.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 40000000 then
  return mp.CLEAN
end
local l_0_0 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if (string.find)(l_0_0, "\\program files", 1, true) then
    return mp.CLEAN
  end
end
local l_0_1 = (bm.get_current_process_startup_info)()
;
(bm.request_SMS)(l_0_1.ppid, "M")
;
(bm.add_action)("SmsAsyncScanEvent", 1000)
return mp.INFECTED

