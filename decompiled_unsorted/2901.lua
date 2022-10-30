-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2901.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  if l_0_0.CompanyName ~= "Sun Microsystems, Inc." then
    return mp.CLEAN
  end
  if l_0_0.ProductName ~= "Java(TM) Platform SE 6" then
    return mp.CLEAN
  end
  if l_0_0.InternalName ~= l_0_0.FileDescription then
    return mp.CLEAN
  end
  if (l_0_0.OriginalFilename):find(".DLL", 1, true) then
    return mp.INFECTED
  end
  if (l_0_0.OriginalFilename):find(".EXE", 1, true) then
    return mp.INFECTED
  end
  if (l_0_0.OriginalFilename):find(".DAT", 1, true) then
    return mp.INFECTED
  end
  if (l_0_0.OriginalFilename):find(".TMP", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN

