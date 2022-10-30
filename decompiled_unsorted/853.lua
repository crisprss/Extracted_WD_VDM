-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/853.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if l_0_0 ~= "" and (string.find)(l_0_0, "\\windows\\microsoft.net\\assembly\\gac_msil\\", 1, true) then
  local l_0_1 = (mp.GetCertificateInfo)()
  for l_0_5,l_0_6 in pairs(l_0_1) do
    if l_0_6.Signers == nil then
      (mp.set_mpattribute)("Lua:GACUnsignedBinDrop")
    end
  end
end
do
  l_0_1 = mp
  l_0_1 = l_0_1.CLEAN
  return l_0_1
end

