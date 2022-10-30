-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2383.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 ~= "c:\\windows\\" then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2["open.bat"] = true
l_0_2["av.bat"] = true
if l_0_2[l_0_1] == true then
  return mp.INFECTED
end
return mp.CLEAN

