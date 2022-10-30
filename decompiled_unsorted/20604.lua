-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20604.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[5]).matched then
  local l_0_0 = ((this_sigattrlog[5]).utf8p2):lower()
  if contains(l_0_0, "treatwarningsaserrors=true") then
    return mp.CLEAN
  end
  local l_0_1 = (this_sigattrlog[5]).ppid
  if l_0_1 ~= nil then
    (bm.request_SMS)(l_0_1, "M")
    ;
    (bm.add_action)("SmsAsyncScanEvent", 100)
    add_parents()
    reportRelatedBmHits()
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

