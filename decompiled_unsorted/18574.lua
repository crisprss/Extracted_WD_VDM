-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18574.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)()
if l_0_0 then
  l_0_0 = (string.lower)(l_0_0)
  if l_0_0:find("viewer.aspx", 1, true) then
    return mp.CLEAN
  end
  if l_0_0:find("\\appdata\\.+\\outlook\\.+autodiscover.xml") then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

