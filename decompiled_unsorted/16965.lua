-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16965.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() < 250000 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
return mp.INFECTED

