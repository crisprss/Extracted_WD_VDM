-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3778.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if StringEndsWith(l_0_0, "/sudo") then
  return mp.CLEAN
end
return mp.INFECTED
