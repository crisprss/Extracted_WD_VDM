-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2792.luac 

-- params : ...
-- function num : 0
if peattributes.no_exports then
  return mp.CLEAN
end
if not peattributes.isdll then
  (mp.set_mpattribute)("Lua:Win32/ExeFileWithExport.A")
end
local l_0_0, l_0_1 = (pe.get_exports)()
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
if l_0_0 > 4 then
  return mp.CLEAN
end
local l_0_2 = "Lua:Win32/FileExports.A!"
for l_0_6 = 1, l_0_0 do
  local l_0_7 = (pe.mmap_string_rva)((l_0_1[l_0_6]).namerva, 64)
  if l_0_7 ~= nil then
    l_0_7 = (string.lower)(l_0_7)
    ;
    (mp.set_mpattribute)(l_0_2 .. l_0_7)
  end
end
return mp.CLEAN

