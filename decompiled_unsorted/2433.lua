-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2433.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  if l_0_0.FileOriginalName == "VMware.SpbmApi.dll" then
    return mp.CLEAN
  end
  if l_0_0.FileOriginalName == "setup.exe" then
    return mp.CLEAN
  end
  if l_0_0.CompanyName ~= "VMware, Inc." then
    return mp.CLEAN
  end
  if l_0_0.ProductName == "VMware" then
    return mp.INFECTED
  end
end
return mp.CLEAN

