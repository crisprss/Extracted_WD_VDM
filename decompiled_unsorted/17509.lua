-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17509.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  if peattributes.dt_error_not_enough_memory then
    (pe.set_peattribute)("enable_vmm_grow", true)
    ;
    (pe.reemulate)()
  end
  return mp.INFECTED
end
return mp.CLEAN

