-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20712.luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
local l_0_0 = ((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()
if l_0_0:find("program files", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

