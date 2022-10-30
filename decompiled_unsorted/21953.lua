-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21953.luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 7) then
  local l_0_0 = (mp.get_parent_filehandle)()
  if not (mp.is_handle_nil)(l_0_0) then
    return mp.CLEAN
  end
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if (string.sub)(l_0_1, 0, 4) == "\\\\?\\" then
    l_0_1 = (string.sub)(l_0_1, 5)
  end
  local l_0_3 = split(l_0_1, "\\")
  if l_0_3[2] == nil then
    return mp.CLEAN
  end
  local l_0_4 = l_0_3[1] .. "\\" .. l_0_3[2]
  local l_0_5 = "hmd_precision_strike_folderscan"
  local l_0_6, l_0_7 = pcall(MpCommon.RollingQueueQueryKey, l_0_5, l_0_4)
  if l_0_6 and l_0_7 then
    return mp.INFECTED
  end
  local l_0_8 = "hmd_precision_strike_fullfilepathscan"
  local l_0_9, l_0_10 = pcall(MpCommon.RollingQueueQueryKey, l_0_8, l_0_1 .. "\\" .. l_0_2)
  if l_0_9 and l_0_10 then
    return mp.INFECTED
  end
  local l_0_11 = "hmd_precision_strike_scanfile"
  local l_0_12, l_0_13 = pcall(MpCommon.RollingQueueQueryKey, l_0_11, l_0_2)
  if l_0_12 and l_0_13 then
    local l_0_14 = "hmd_precision_strike_scanfile_count"
    local l_0_15 = "max_scan"
    local l_0_16 = tonumber(GetRollingQueueKeyValue(l_0_14, l_0_15))
    local l_0_17 = "heimdall_filescan_count"
    if l_0_16 <= AddToAtomicCounter(l_0_17, 1) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  do
    do
      do return mp.CLEAN end
      return mp.CLEAN
    end
  end
end

