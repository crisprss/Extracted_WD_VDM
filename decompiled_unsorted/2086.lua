-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2086.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil and l_0_0.CompanyName ~= nil and (l_0_0.CompanyName):find("Mizollo", 1, true) == 1 then
  return mp.INFECTED
end
return mp.CLEAN

