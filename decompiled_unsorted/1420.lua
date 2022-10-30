-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1420.luac 

-- params : ...
-- function num : 0
local l_0_0 = this_sigattrlog[2]
if not l_0_0 or not l_0_0.matched then
  return mp.CLEAN
end
local l_0_1 = this_sigattrlog[3]
if not l_0_1 or not l_0_1.matched then
  return mp.CLEAN
end
local l_0_2 = l_0_0.utf8p1
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = l_0_0.utf8p2
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_3, "regionsize:(%d+)")
if not l_0_4 then
  return mp.CLEAN
end
if tonumber(l_0_4) < 16384 then
  return mp.CLEAN
end
local l_0_5 = (string.match)(l_0_3, "vmbaseaddress:(%d+)")
if not l_0_5 then
  return mp.CLEAN
end
local l_0_6 = (string.match)(l_0_3, "injectiontype:(%a+);")
if not l_0_6 then
  return mp.CLEAN
end
local l_0_7 = l_0_1.utf8p2
if not l_0_7 then
  return mp.CLEAN
end
local l_0_8 = (string.match)(l_0_7, "injectiontype:(%a+);")
if not l_0_8 then
  return mp.CLEAN
end
local l_0_9, l_0_10 = (string.match)(l_0_2, "targetprocessppid:(%d+):(%d+)")
if not l_0_9 or not l_0_10 then
  return mp.CLEAN
end
local l_0_11 = l_0_0.ppid
if not l_0_11 then
  return mp.CLEAN
end
do
  local l_0_12, l_0_13, l_0_14, l_0_15, l_0_16 = (MpCommon.IsFriendlyProcess)(l_0_11) and "1" or "0"
  ;
  (bm.add_related_string)("ci_al", l_0_6, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("ci_tp", l_0_8, bm.RelatedStringBMReport)
  ;
  (bm.add_related_string)("ci_sz", l_0_4, bm.RelatedStringBMReport)
  -- DECOMPILER ERROR at PC138: Confused about usage of register: R12 in 'UnsetPending'

  ;
  (bm.add_related_string)("ci_fr", l_0_12, bm.RelatedStringBMReport)
  return mp.INFECTED
end

