-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16408.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isdll") and ((pe.get_versioninfo)()).InternalName == "RunPE.dll" then
  return mp.INFECTED
end
return mp.CLEAN

