-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2731.luac 

-- params : ...
-- function num : 0
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).Size < 9 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA == 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (pe.mmap_rva)(((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_EXPORT]).RVA, 9)
local l_0_1 = (mp.readu_u32)(l_0_0, 5)
local l_0_2 = l_0_1 - pehdr.TimeDateStamp
if l_0_2 > 233135995 and l_0_2 < 233136005 then
  return mp.INFECTED
end
return mp.CLEAN

