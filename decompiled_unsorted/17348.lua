-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17348.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -12))
if (string.find)(l_0_0, "\\wuauclt.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

