-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18025.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("HSTR:SoftwareBundler:Win32/Avarus") then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
;
(mp.set_mpattribute)("PUA:Block:Avarus")
return mp.INFECTED

