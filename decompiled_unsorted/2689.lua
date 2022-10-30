-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2689.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 10000 then
  return mp.CLEAN
end
local l_0_1 = (pe.get_versioninfo)()
if l_0_1 ~= nil then
  if l_0_1.CompanyName ~= "Adobe Systems Incorporated" then
    return mp.CLEAN
  end
  if l_0_1.FileOriginalName == "protect.exe" then
    return mp.CLEAN
  end
  if l_0_1.FileOriginalName == "WebInstaller.exe" then
    return mp.CLEAN
  end
  if l_0_1.ProductName == "Adobe" then
    return mp.INFECTED
  end
end
return mp.CLEAN

