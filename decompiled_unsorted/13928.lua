-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13928.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.x86_image and peattributes.ismsil == false then
  return mp.INFECTED
end
return mp.CLEAN
