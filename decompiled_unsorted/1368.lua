-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1368.luac 

-- params : ...
-- function num : 0
local l_0_0 = "http://b1566530-7dcc-4568-a501-3ca8bb16c014.info"
local l_0_1 = {}
l_0_1[1] = l_0_0
local l_0_2 = {}
l_0_2.SIG_CONTEXT = "BM"
l_0_2.CONTENT_SOURCE = "AdaptiveTP_TamperingGen"
local l_0_3, l_0_4 = pcall(mp.GetUrlReputation, l_0_1, l_0_2)
if not l_0_3 or not l_0_4 or not l_0_4.urls then
  (bm.add_related_string)("CloudAdvice", "empty", bm.RelatedStringBMReport)
end
for l_0_8,l_0_9 in ipairs(l_0_4.urls) do
  if l_0_9.determination == 4 then
    (bm.add_related_string)("CloudAdvice", json_encode(l_0_9), bm.RelatedStringBMReport)
    return mp.INFECTED
  end
end
return mp.CLEAN

