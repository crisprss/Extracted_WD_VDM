-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2119.luac 

-- params : ...
-- function num : 0
if (mp.bitand)((mp.readu_u32)(headerpage, 1), 16777215) ~= 5461830 then
  return mp.CLEAN
end
if (mp.isparanoid)() then
  return mp.INFECTED
end
return mp.CLEAN

