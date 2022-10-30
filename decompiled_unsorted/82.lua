-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/82.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 == "winrar.exe" then
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_1 == nil or (string.len)(l_0_1) < 4 then
    return mp.CLEAN
  end
  local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = "UdfExtractedByWinrar"
  local l_0_4 = (MpCommon.QueryPersistContext)(l_0_2, l_0_3)
  if not l_0_4 then
    (MpCommon.AppendPersistContext)(l_0_2, l_0_3, 100)
  end
  return mp.INFECTED
else
  do
    if l_0_0 == "7z.exe" or l_0_0 == "7za.exe" or l_0_0 == "7zfm.exe" or l_0_0 == "7zg.exe" or (string.find)(l_0_0, "7z%d%d%d%d%-x64%.exe") ~= nil or (string.find)(l_0_0, "7z%d%d%d%d%.exe") ~= nil then
      local l_0_5 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
      if l_0_5 == nil or (string.len)(l_0_5) < 4 then
        return mp.CLEAN
      end
      local l_0_6 = (MpCommon.PathToWin32Path)(l_0_5)
      if l_0_6 == nil then
        return mp.CLEAN
      end
      local l_0_7 = "UdfExtractedBy7zip"
      local l_0_8 = (MpCommon.QueryPersistContext)(l_0_6, l_0_7)
      if not l_0_8 then
        (MpCommon.AppendPersistContext)(l_0_6, l_0_7, 100)
      end
      ;
      (mp.set_mpattribute)("Lua:Context/UdfExtractedFromArchive")
      return mp.INFECTED
    end
    do
      return mp.CLEAN
    end
  end
end

