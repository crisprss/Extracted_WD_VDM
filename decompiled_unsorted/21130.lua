-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21130.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "facturas pagadas al vencimientopdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "panderizes sagenesses.exe", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

