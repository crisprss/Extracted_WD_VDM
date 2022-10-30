-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1584.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 > 2097152 then
    return mp.CLEAN
  end
  local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_1 == nil or (string.len)(l_0_1) < 12 then
    return mp.CLEAN
  end
  local l_0_2 = l_0_1:sub(-4)
  local l_0_3 = l_0_1:sub(-6)
  local l_0_4 = {}
  l_0_4[".jse"] = true
  l_0_4[".vbs"] = true
  l_0_4[".wsf"] = true
  l_0_4[".vbe"] = true
  l_0_4[".hta"] = true
  l_0_4[".mht"] = true
  l_0_4[".bat"] = true
  l_0_4[".ps1"] = true
  l_0_4[".cmd"] = true
  l_0_4[".url"] = true
  l_0_4[".exe"] = true
  l_0_4[".scr"] = true
  l_0_4[".pif"] = true
  l_0_4[".lnk"] = true
  l_0_4[".docx"] = true
  l_0_4[".xlsx"] = true
  l_0_4[".doc"] = true
  l_0_4[".xls"] = true
  l_0_4[".rtf"] = true
  l_0_4.docm = true
  l_0_4.xlsm = true
  l_0_4.ppam = true
  l_0_4.pptm = true
  l_0_4.ppsm = true
  l_0_4.potm = true
  if l_0_4[l_0_2] == true or l_0_4[l_0_3] == true then
    if not l_0_1:find(".zip->", 1, true) and not l_0_1:find(".7z->", 1, true) and not l_0_1:find(".rar->", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

