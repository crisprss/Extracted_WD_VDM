-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3475.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 == nil or l_0_1 == "" or l_0_2 == nil or l_0_2 == "" then
    return mp.CLEAN
  end
  local l_0_3 = l_0_2:match("%.([^%.]+)$")
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = {}
  l_0_4.xlsx = true
  l_0_4.xls = true
  l_0_4.xlsm = true
  l_0_4.xlsb = true
  l_0_4.xltx = true
  l_0_4.xltm = true
  l_0_4.xlam = true
  l_0_4.xla = true
  l_0_4.docx = true
  l_0_4.doc = true
  l_0_4.docm = true
  l_0_4.ppam = true
  l_0_4.pptm = true
  l_0_4.ppsm = true
  l_0_4.potm = true
  l_0_4.rtf = true
  if not l_0_4[l_0_3] then
    return mp.CLEAN
  end
  local l_0_5 = false
  if (mp.get_mpattribute)("MHSTR:MacroInside") then
    (mp.set_mpattribute)("Lua:MacroOfficeFilesFromArchivesMotw")
    l_0_5 = true
  end
  local l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = nil, nil, nil, nil, nil
  local l_0_11 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_ID)
  local l_0_12 = (MpCommon.GetImagePathFromPid)(l_0_11)
  while 1 do
    if l_0_10 <= 3 then
      l_0_7 = pcall(mp.GetParentProcInfo, l_0_11)
    end
    if l_0_7 == true then
      if l_0_8 == nil then
        break
      end
      l_0_11 = l_0_8.ppid
    end
    if l_0_11 == nil then
      break
    end
    l_0_9 = (string.lower)(l_0_8.image_path)
    if l_0_9 == nil then
      break
    end
    l_0_6 = l_0_6 .. "Parent_" .. l_0_10 .. "Path=" .. l_0_9 .. ";pid=" .. l_0_11 .. ";"
  end
  local l_0_13 = (MpCommon.GetCurrentTimeT)()
  local l_0_14 = "OFFAR::ProcessImagePath=" .. l_0_12 .. ";pid=" .. l_0_11 .. ";timestamp=" .. l_0_13 .. l_0_6 .. ";HasMacros=" .. l_0_5
  local l_0_15 = 31536000
  if not (MpCommon.QueryPersistContext)(l_0_1, l_0_14) then
    (MpCommon.AppendPersistContext)(l_0_1, l_0_14, l_0_15)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

