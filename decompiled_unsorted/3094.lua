-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3094.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 1024 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u16)(headerpage, 9)
local l_0_1 = (mp.readu_u32)(headerpage, 23)
if l_0_0 == 0 and l_0_1 ~= 0 then
  (mp.set_mpattribute)("Lua:ZipNoCompression")
  if (mp.readu_u32)(headerpage, 19) == 4294967295 and (mp.readu_u32)(headerpage, 23) == 4294967295 then
    local l_0_2 = 31 + (mp.readu_u16)(headerpage, 27) + (mp.readu_u16)(headerpage, 29)
    if l_0_2 < 1008 and (mp.readu_u32)(headerpage, l_0_2) == 67324752 then
      (mp.set_mpattribute)("Lua:MizenotaDoubleZip")
    end
  end
end
do
  local l_0_3 = 1
  do
    if l_0_0 == 0 and l_0_1 == 0 then
      local l_0_4 = 31 + (mp.readu_u16)(headerpage, 27) + (mp.readu_u16)(headerpage, 29)
      if l_0_4 < 1008 and (mp.readu_u32)(headerpage, l_0_4) == 67324752 then
        l_0_3 = l_0_4
      end
    end
    if (mp.bitand)((mp.readu_u16)(headerpage, l_0_3 + 6), 1) == 1 then
      (mp.set_mpattribute)("Lua:ZipEncrypted")
    end
    return mp.CLEAN
  end
end

