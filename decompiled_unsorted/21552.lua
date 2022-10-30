-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21552.luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  return mp.CLEAN
end
if (mp.get_mpattribute)("pea_isdriver") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("Lua:VirTool:Win32/VMProtect.A") then
  return mp.CLEAN
end
if (mp.getfilesize)() < 5242880 then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0 == "generator.exe" or l_0_0 == "g1.exe" then
  (mp.set_mpattribute)("HSTR:GGenerator.D")
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("\\g1\\", 1, true) then
  (mp.set_mpattribute)("HSTR:GGenerator.D")
end
if l_0_1:find("\\g1-beta\\", 1, true) then
  return mp.INFECTED
end
if l_0_1:find("g1\\generator\\", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

