-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3476.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcall(mp.getfilename, mp.FILEPATH_QUERY_FULL)
if l_0_0 then
  local l_0_2 = "AppData\\Local"
  local l_0_3 = l_0_1:find(l_0_2, 1, true)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = (string.sub)(l_0_1, l_0_3 + #l_0_2)
  local l_0_5, l_0_6 = l_0_4:gsub("\\", "")
  if l_0_6 < 4 and l_0_6 > 6 then
    return mp.CLEAN
  end
  local l_0_7, l_0_8 = (MpCommon.StringRegExpSearch)("([a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}\\\\[a-zA-Z0-9]{10,20}.[a-z]{3}$)", l_0_4)
  if l_0_7 == false then
    return mp.CLEAN
  end
  local l_0_9 = (string.sub)(l_0_4, 0, #l_0_4 - #l_0_8)
  local l_0_10 = {}
  l_0_10["\\Microsoft\\Windows\\PowerShell\\"] = true
  l_0_10["\\Microsoft\\Office\\PowerPoint\\"] = true
  l_0_10["\\Microsoft\\Internet Explorer\\"] = true
  l_0_10["\\Microsoft\\Office\\Publisher\\"] = true
  l_0_10["\\Microsoft\\Windows\\Explorer\\"] = true
  l_0_10["\\Microsoft\\Office\\Outlook\\"] = true
  l_0_10["\\Microsoft\\Windows\\Shell\\"] = true
  l_0_10["\\Microsoft\\Office\\Access\\"] = true
  l_0_10["\\Microsoft\\Office\\Visio\\"] = true
  l_0_10["\\Microsoft\\Office\\Excel\\"] = true
  l_0_10["\\Microsoft\\Media Player\\"] = true
  l_0_10["\\Microsoft\\Office\\Word\\"] = true
  l_0_10["\\Microsoft\\VisualStudio\\"] = true
  l_0_10["\\Microsoft\\CLR_v2.0_32\\"] = true
  l_0_10["\\Microsoft\\CLR_v4.0_32\\"] = true
  l_0_10["\\Microsoft\\Powerpoint\\"] = true
  l_0_10["\\Microsoft\\Installer\\"] = true
  l_0_10["\\Microsoft\\CLR_v2.0\\"] = true
  l_0_10["\\Microsoft\\CLR_v4.0\\"] = true
  l_0_10["\\Microsoft\\OneDrive\\"] = true
  l_0_10["\\Microsoft\\Network\\"] = true
  l_0_10["\\Microsoft\\Outlook\\"] = true
  l_0_10["\\Microsoft\\MSBuild\\"] = true
  l_0_10["\\Microsoft\\Office\\"] = true
  l_0_10["\\Microsoft\\DotNet\\"] = true
  l_0_10["\\Microsoft\\Access\\"] = true
  l_0_10["\\Microsoft\\AddIns\\"] = true
  l_0_10["\\Microsoft\\Crypto\\"] = true
  l_0_10["\\Microsoft\\Vault\\"] = true
  l_0_10["\\Microsoft\\Excel\\"] = true
  l_0_10["\\Mozilla\\Firefox\\"] = true
  l_0_10["\\Microsoft\\Word\\"] = true
  l_0_10["\\Microsoft\\"] = true
  l_0_10["\\Adobe\\"] = true
  if l_0_10[l_0_9] then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

