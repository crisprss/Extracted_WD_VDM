-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3292.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.readu_u32)(headerpage, 1)
if l_0_0 < 2 or l_0_0 > 5 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u32)(headerpage, 5)
local l_0_2 = l_0_1 + 32
if mp.HEADERPAGE_SZ < l_0_2 or l_0_1 == 0 then
  return mp.CLEAN
end
local l_0_3 = (mp.readu_u32)(headerpage, 9)
if l_0_2 < l_0_3 then
  return mp.CLEAN
end
local l_0_4 = "U‹ì"
local l_0_5 = (string.len)(l_0_4)
local l_0_6 = 20
local l_0_7 = 0
local l_0_8 = (mp.readheader)(12, l_0_6)
for l_0_12 = 1, l_0_6 do
  _t = (string.byte)(l_0_8, l_0_12)
  l_0_7 = (mp.bitxor)(_t, l_0_7)
end
local l_0_13 = ""
local l_0_14 = ""
local l_0_15 = 0
local l_0_16 = (mp.readheader)(32, l_0_5)
for l_0_20 = 1, l_0_5 do
  l_0_15 = (string.byte)(l_0_16, l_0_20)
  l_0_14 = (mp.bitxor)(l_0_15, l_0_7)
  l_0_13 = l_0_13 .. (string.char)(l_0_14)
end
if l_0_13 ~= l_0_4 then
  return mp.CLEAN
end
local l_0_21 = 0
local l_0_22 = (mp.readheader)(l_0_2 + 12, l_0_6)
for l_0_26 = 1, l_0_6 do
  l_0_15 = (string.byte)(l_0_22, l_0_26)
  l_0_21 = (mp.bitxor)(l_0_15, l_0_21)
end
local l_0_27 = ""
local l_0_28 = (mp.readheader)(l_0_2 + 32, l_0_5)
for l_0_32 = 1, l_0_5 do
  l_0_15 = (string.byte)(l_0_28, l_0_32)
  l_0_14 = (mp.bitxor)(l_0_15, l_0_21)
  l_0_27 = l_0_27 .. (string.char)(l_0_14)
end
if l_0_27 ~= l_0_4 then
  return mp.CLEAN
end
return mp.INFECTED

