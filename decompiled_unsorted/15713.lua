-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15713.luac 

-- params : ...
-- function num : 0
if (mp.bitand)(mp.HSTR_WEIGHT, 992) >= 32 and (mp.bitand)(mp.HSTR_WEIGHT, 31) >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

