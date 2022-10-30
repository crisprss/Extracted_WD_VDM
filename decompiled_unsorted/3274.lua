-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3274.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 160 then
  return mp.CLEAN
end
local l_0_0 = (string.find)(tostring(headerpage), "`\000\000\000\003\000\000 X\000\000\000\000\000\000\000", 1, true)
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0 + 15
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(l_0_1, 81)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.match)(tostring(l_0_2), "[^%z]+")
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = l_0_3:len() + 28
if l_0_2:len() < l_0_4 + 6 then
  return mp.CLEAN
end
local l_0_5 = (mp.readu_u16)(l_0_2, l_0_4)
local l_0_6 = (mp.readu_u32)(l_0_2, l_0_4 + 2)
local l_0_7 = (mp.bitor)((mp.shl64)(l_0_6, 16), l_0_5)
if l_0_7 == 1.768574519421e+14 or l_0_7 == 81286657363968 then
  (mp.set_mpattribute)("Lua:LNKAdwind")
end
local l_0_8 = l_0_3 .. tostring(l_0_7)
local l_0_9 = (crypto.Sha1Buffer)(l_0_8, 0, #l_0_8)
;
(mp.set_mpattribute)("MpInternal_researchdata=LHMAD=" .. l_0_9)
local l_0_10 = 229
local l_0_11, l_0_12, l_0_13 = (MpCommon.SNidSearch)(l_0_10, l_0_9)
if l_0_11 then
  (mp.changedetectionrecid)(l_0_13)
  return mp.INFECTED
end
return mp.CLEAN

