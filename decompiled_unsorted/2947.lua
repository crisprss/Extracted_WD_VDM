-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2947.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 8000000 then
  return mp.CLEAN
end
if l_0_0 < 200 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("\\windows\\system32\\sys.dat", 1, true) then
  return mp.INFECTED
end
if l_0_1:find("\\windows\\system32\\richlog.dat", 1, true) then
  return mp.INFECTED
end
if l_0_1:find("\\windows\\system32\\flash.dat", 1, true) then
  return mp.INFECTED
end
if l_0_1:find("\\windows\\system32\\main.dat", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

