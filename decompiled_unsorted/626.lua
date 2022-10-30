-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/626.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) < 4 then
  return mp.CLEAN
end
local l_0_1 = (MpCommon.PathToWin32Path)(l_0_0)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (MpCommon.GetMountedFileBackingFilePath)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.ReportLowfi)(l_0_2, 2536803289)
local l_0_3 = (sysio.GetFileAttributes)((mp.getfilename)())
local l_0_4 = (mp.bitand)(l_0_3, 2)
local l_0_5 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if l_0_4 == 0 then
  (mp.set_mpattribute)("Lua:Context/DllOnFileBackedMountedDrive")
  if l_0_5:find("^\\device\\cdrom") ~= nil then
    (mp.set_mpattribute)("Lua:Context/MaybeDllSideLoadingOnFileBackedMountedDrive")
  end
else
  ;
  (mp.set_mpattribute)("Lua:Context/HiddenDllOnFileBackedMountedDrive")
  if l_0_5:find("^\\device\\cdrom") ~= nil then
    (mp.set_mpattribute)("Lua:Context/MaybeHiddenDllSideLoadingOnFileBackedMountedDrive")
  end
end
if (MpCommon.QueryPersistContext)(l_0_2, "UdfExtractedBy7zip") or (MpCommon.QueryPersistContext)(l_0_2, "UdfExtractedByWinrar") then
  (mp.set_mpattribute)("Lua:Context/DllonFileBackedMountedDriveFromArchive")
end
return mp.CLEAN

