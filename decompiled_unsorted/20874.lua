-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20874.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (this_sigattrlog[1]).ppid
  local l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if (string.find)(l_0_1, ".dat", 1, true) and (string.find)(l_0_1, "--", 1, true) and (string.find)(l_0_1, "#1", 1, true) and (string.find)(l_0_1, "=\"", 1, true) and l_0_0 then
    (bm.request_SMS)(l_0_0, "m")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 1)
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

