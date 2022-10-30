-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18913.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
if peattributes.isexe == true and pehdr.NumberOfSections == 9 and (pesecs[4]).Name == "seg1" then
  return mp.INFECTED
end
return mp.CLEAN

