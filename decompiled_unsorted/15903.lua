-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15903.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("NID:BrowserModifier:Win32/Prifou.A2") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN
