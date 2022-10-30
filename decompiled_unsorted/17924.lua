-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17924.luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if (pe.get_exports)() ~= 1 then
  return mp.CLEAN
end
if (pe.mmap_string_rva)((R1_PC17[1]).namerva, 64) == "maggie" then
  return mp.INFECTED
end
return mp.CLEAN

