-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2687.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "scanneddocuments_%d%d%d%d+.html") ~= nil or (string.find)(l_0_0, "scanneddocs_%d%d%d%d+.html") ~= nil or (string.find)(l_0_0, "commercial doc for inv# rgl/085/2022.shtml") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

