-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3972.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and IsExcludedByImagePath(l_0_0) then
  return mp.CLEAN
end
local l_0_1 = 200000000
if l_0_1 < (bm.GetSignatureMatchDuration)() then
  return mp.CLEAN
end
addRelatedProcess()
reportRelatedBmHits()
TrackPidAndTechniqueBM("BM", "T1110.001", "CredentialAccess")
return mp.INFECTED

