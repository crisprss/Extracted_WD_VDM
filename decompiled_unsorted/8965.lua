-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/8965.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PACKED:ASPROTECT") then
  return mp.LOWFI
end
return mp.CLEAN

