-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/8954.luac 

-- params : ...
-- function num : 0
if not isTamperProtectionOn() then
  return mp.LOWFI
end
return mp.INFECTED

