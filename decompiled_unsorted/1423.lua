-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1423.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[4]).matched then
  l_0_0 = (this_sigattrlog[4]).utf8p2
else
  if (this_sigattrlog[5]).matched then
    l_0_0 = (this_sigattrlog[5]).utf8p2
  else
    if (this_sigattrlog[6]).matched then
      l_0_0 = (this_sigattrlog[6]).utf8p2
    else
      if (this_sigattrlog[7]).matched then
        l_0_0 = (this_sigattrlog[7]).utf8p2
      end
    end
  end
end
local l_0_1 = tonumber(l_0_0:match("Bytes:([%d]+);"))
local l_0_2 = (bm.get_current_process_startup_info)()
if not l_0_2 or not l_0_2.ppid or l_0_2.ppid == "" then
  return mp.CLEAN
end
local l_0_3 = "bytesReadAC" .. l_0_2.ppid
local l_0_4 = "readsCountAC" .. l_0_2.ppid
local l_0_5 = 1
local l_0_6 = (MpCommon.AtomicCounterValue)(l_0_3)
if l_0_6 == nil then
  (MpCommon.AtomicCounterSet)(l_0_3, l_0_1, 60)
  ;
  (MpCommon.AtomicCounterSet)(l_0_4, l_0_5, 60)
else
  l_0_6 = (MpCommon.AtomicCounterAdd)(l_0_3, l_0_1) + l_0_1
  l_0_5 = (MpCommon.AtomicCounterAdd)(l_0_4, 1) + 1
  if l_0_6 > 35000000 and l_0_5 > 1000 then
    (bm.add_related_string)("lsassReadBytes", tostring(l_0_6), bm.RelatedStringBMReport)
    ;
    (bm.add_related_string)("lsassReadsCount", tostring(l_0_5), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
return mp.CLEAN

