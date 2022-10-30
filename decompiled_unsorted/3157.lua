-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3157.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 5242880 then
  return mp.CLEAN
end
local l_0_1 = (mp.readu_u32)(headerpage, 1)
local l_0_2 = (mp.readu_u32)(headerpage, 5)
if l_0_1 == 0 or l_0_2 == 0 then
  return mp.CLEAN
end
local l_0_3 = (mp.readu_u32)(headerpage, 33)
if (mp.bitxor)(l_0_1, l_0_3) ~= 9460301 then
  return mp.CLEAN
end
local l_0_4 = ""
local l_0_5 = 0
local l_0_6 = 0
local l_0_7 = 0
local l_0_8 = 32
local l_0_9 = 64
local l_0_10 = (mp.readheader)(0, l_0_8)
local l_0_11 = (mp.readheader)(l_0_8, l_0_9)
for l_0_15 = 1, l_0_9 do
  l_0_5 = (string.byte)(l_0_11, l_0_15)
  l_0_6 = (string.byte)(l_0_10, (l_0_15 - 1) % l_0_8 + 1)
  l_0_7 = (mp.bitxor)(l_0_5, l_0_6)
  l_0_4 = l_0_4 .. (string.char)(l_0_7)
end
local l_0_16 = 41
local l_0_17 = 61
if (string.sub)(l_0_4, 0, 16) == "MZ\144\000\003\000\000\000\004\000\000\000\255\255\000\000" and (string.sub)(l_0_4, l_0_16, l_0_9 - 4) == "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000" and (mp.readu_u32)(l_0_4, l_0_17) < 512 then
  return mp.INFECTED
end
return mp.CLEAN

