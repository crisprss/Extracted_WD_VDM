-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/521.luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() == true then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("Lua:IsNotLegacyOrgMachine")
return mp.CLEAN

