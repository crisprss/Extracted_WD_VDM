-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21204.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//SCPT:HTML/DoubleCryptoFraudKey") == false and (mp.get_mpattribute)("//SCPT:MSG/CryptoExtortion") == false then
  return mp.CLEAN
end
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_3 = l_0_0.match_offset
if l_0_0.is_footer then
  l_0_3 = (mp.getfilesize)() - mp.FOOTERPAGE_SZ + l_0_3
  local l_0_1, l_0_2 = nil
end
do
  if Infrastructure_CryptoSearcher(l_0_3) == true then
    if (mp.get_mpattribute)("//SCPT:HTML/DoubleCryptoFraudKey") == true then
      (mp.set_mpattribute)("MpInternal_researchdata=threat=double")
    end
    if (mp.get_mpattribute)("//SCPT:MSG/CryptoExtortion") == true then
      (mp.set_mpattribute)("MpInternal_researchdata=threat=extort")
    end
    return mp.INFECTED
  end
  return mp.CLEAN
end

