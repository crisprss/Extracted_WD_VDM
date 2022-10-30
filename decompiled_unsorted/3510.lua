-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3510.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  local l_0_1 = (mp.IOAVGetDownloadUrl)()
  if l_0_1 == nil or (string.len)(l_0_1) < 19 then
    return mp.CLEAN
  end
  local l_0_2 = (l_0_1:match("https?://([%w%.-]+)/")):lower()
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = nil
  if l_0_2:find("mail.google", 1, true) ~= nil or l_0_2:find("mail-attachment", 1, true) ~= nil or l_0_2:find("attachment.outlook.", 1, true) ~= nil or l_0_2:find("dl-mail.ymail", 1, true) ~= nil or l_0_2:find(".yahoomail.", 1, true) ~= nil or l_0_2:find(".outlook.office.", 1, true) ~= nil then
    l_0_3 = "webmail"
  end
  local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  local l_0_5 = getCachePaths(l_0_4)
  if l_0_5 == nil and l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_6, l_0_7 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_6 == nil or l_0_6 == "" or l_0_7 == nil or l_0_7 == "" then
    return mp.CLEAN
  end
  if l_0_3 == nil then
    for l_0_11,l_0_12 in pairs(l_0_5) do
      if l_0_6:find(l_0_12, 1, true) ~= nil then
        l_0_3 = "emailclient"
        break
      end
    end
  end
  do
    if l_0_3 ~= nil then
      local l_0_13 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID)
      local l_0_14 = (MpCommon.GetImagePathFromPid)(l_0_13)
      local l_0_15 = (MpCommon.GetCurrentTimeT)()
      local l_0_16 = "WARCH::ProcessImagePath=" .. l_0_14 .. ";ProcessPID=" .. l_0_13 .. ";timestamp=" .. l_0_15 .. ";Source=" .. l_0_3 .. ";OriginalArtifactPath=" .. l_0_1
      local l_0_17 = false
      if (mp.get_mpattribute)("Lua:ZipEncrypted") or (mp.set_mpattribute)("Lua:RarHasEncryptedFile") then
        l_0_17 = true
      end
      l_0_16 = l_0_16 .. ";IsEncrypted=" .. l_0_17
      local l_0_18 = 31536000
      if not (MpCommon.QueryPersistContext)(l_0_6, l_0_16) then
        (MpCommon.AppendPersistContext)(l_0_6, l_0_16, l_0_18)
      end
      return mp.INFECTED
    end
    do
      return mp.CLEAN
    end
  end
end

