-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16960.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("BM_OLE_FILE") and ((mp.get_mpattribute)("MHSTR:MacroExecute") or (mp.get_mpattribute)("MHSTR:MacroJustAutoOpen")) then
  return mp.INFECTED
end
return mp.CLEAN

