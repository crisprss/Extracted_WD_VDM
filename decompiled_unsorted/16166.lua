-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16166.luac 

-- params : ...
-- function num : 0
if pehdr.Machine == 34404 then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

