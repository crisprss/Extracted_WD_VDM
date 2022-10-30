-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2384.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= (mp.getfilesize)() then
  return mp.CLEAN
end
if (mp.readheader)(44, 16) == "\254\255\255\255\001\000\000\000\v\000\000\000\001\000\000\000" then
  return mp.INFECTED
end
return mp.CLEAN

