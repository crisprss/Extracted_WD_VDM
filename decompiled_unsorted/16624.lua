-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16624.luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).matched then
  return mp.INFECTED
end
;
(pe.set_peattribute)("hstr_exhaustive", true)
;
(pe.reemulate)()
return mp.CLEAN

