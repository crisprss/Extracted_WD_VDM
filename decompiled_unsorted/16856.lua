-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16856.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("ALF:HSTR:Trojan:Win32/FauppodPDB.S010") then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:Trojan:Win32/Fauppod.SA")
return mp.LOWFI

