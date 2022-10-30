-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/624.luac 

-- params : ...
-- function num : 0
if checkLogonSuccessEvent(this_sigattrlog[1], false) then
  return mp.INFECTED
end
return mp.CLEAN

