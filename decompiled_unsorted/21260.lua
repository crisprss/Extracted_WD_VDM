-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21260.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat1")
local l_0_1 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat2")
local l_0_2 = (mp.enum_mpattributesubstring)("SCPT:ClnWordsCat3")
if #l_0_0 >= 1 or #l_0_1 >= 5 or #l_0_2 >= 3 then
  return mp.CLEAN
end
local l_0_3 = (mp.enum_mpattributesubstring)("SCPT:RansomNote")
if #l_0_3 < 1 then
  return mp.CLEAN
end
local l_0_4 = (mp.GetBruteMatchData)()
local l_0_7 = l_0_4.match_offset
if l_0_4.is_footer then
  l_0_7 = (mp.getfilesize)() - mp.FOOTERPAGE_SZ + l_0_7
  local l_0_5, l_0_6 = nil
end
do
  if Infrastructure_CryptoSearcher(l_0_7) == true then
    (mp.set_mpattribute)("MpInternal_researchdata=threat=ransom")
    return mp.INFECTED
  end
  return mp.CLEAN
end

