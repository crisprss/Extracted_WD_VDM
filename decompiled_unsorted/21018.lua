-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21018.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 20480 then
  return mp.CLEAN
end
local l_0_1 = (mp.readheader)(0, 16)
local l_0_2 = (string.find)(l_0_1, "\000\001\000\000\000\255\255\255\255\001\000\000\000\000\000\000", 1, true)
if l_0_2 then
  (mp.set_mpattribute)("BM_SerializedObj.A")
  local l_0_3 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if (string.find)(l_0_3, "\\local\\microsoft\\event viewer\\", 1, true) then
    (mp.set_mpattribute)("Lua:FileInsideEventviewFolder")
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

