-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10886.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED_WITH:[aPLib_034_mem]") then
  return mp.INFECTED
end
return mp.CLEAN
