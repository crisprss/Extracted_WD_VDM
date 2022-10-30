-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3155.luac 

-- params : ...
-- function num : 0
local l_0_0 = 197
local l_0_1 = 133
local l_0_2 = (mp.getfilesize)()
local l_0_3 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
local l_0_4 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).Size
if l_0_3 == 0 or l_0_4 < l_0_0 + l_0_1 or l_0_2 <= l_0_3 or l_0_2 - l_0_3 < l_0_4 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_5 = (mp.readfile)(l_0_3 + l_0_0, l_0_1)
if l_0_5:find("Sectigo", 1, true) then
  (mp.set_mpattribute)("Lua:Issuer.Sectigo")
end
if l_0_5:find("thawte", 1, true) then
  (mp.set_mpattribute)("Lua:Issuer.thawte")
end
if l_0_5:find("COMODO", 1, true) then
  (mp.set_mpattribute)("Lua:Issuer.COMODO")
end
if l_0_5:find("Microsoft", 1, true) then
  (mp.set_mpattribute)("Lua:Issuer.Microsoft")
end
if l_0_5:find("DigiCert", 1, true) then
  (mp.set_mpattribute)("Lua:Issuer.DigiCert")
end
;
(mp.readprotection)(true)
return mp.CLEAN

