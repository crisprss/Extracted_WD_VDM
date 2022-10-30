-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2291.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if (l_0_0.ProductName ~= nil and (l_0_0.ProductName):find("C5.Client", 1, true) == 1) or l_0_0.FileDescription ~= nil and (l_0_0.FileDescription):find("C5.Client", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN

