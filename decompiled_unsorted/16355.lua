-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16355.luac 

-- params : ...
-- function num : 0
if peattributes.epoutofimage == true and peattributes.hasexports == true and peattributes.no_security == true and peattributes.no_ep == true then
  return mp.INFECTED
end
return mp.CLEAN

