-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14010.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 8 then
  (mp.set_mpattribute)("PUA:Block:SheriDroid.B")
  return mp.INFECTED
end
return mp.LOWFI
