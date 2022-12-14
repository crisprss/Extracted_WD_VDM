-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3463.luac 

-- params : ...
-- function num : 0
GetCtxOfficeProc = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0["excel.exe"] = "productivity"
  l_1_0["onenote.exe"] = "productivity"
  l_1_0["outlook.exe"] = "communication"
  l_1_0["powerpnt.exe"] = "productivity"
  l_1_0["winword.exe"] = "productivity"
  l_1_0["lync.exe"] = "communication2"
  l_1_0["msaccess.exe"] = "productivity2"
  l_1_0["mspub.exe"] = "productivity2"
  l_1_0["visio.exe"] = "productivity2"
  local l_1_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  l_1_1 = (l_1_1 == nil and "" or l_1_1):lower()
  if l_1_0[l_1_1] == nil and not isOutlookProcess(l_1_1) then
    return ""
  end
  local l_1_2 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
  l_1_2 = (l_1_2 == nil and "" or l_1_2):lower()
  local l_1_3 = (mp.ContextualExpandEnvironmentVariables)("%programfiles%")
  l_1_3 = (l_1_3 == nil and "" or l_1_3):lower()
  local l_1_4 = (mp.ContextualExpandEnvironmentVariables)("%programfiles(x86)%")
  l_1_4 = (l_1_4 == nil and "" or l_1_4):lower()
  if l_1_2 == l_1_3 .. "\\microsoft office\\root\\office14" or l_1_2 == l_1_3 .. "\\microsoft office\\root\\office15" or l_1_2 == l_1_3 .. "\\microsoft office\\root\\office16" or l_1_2 == l_1_3 .. "\\microsoft office\\office14" or l_1_2 == l_1_3 .. "\\microsoft office\\office15" or l_1_2 == l_1_3 .. "\\microsoft office\\office16" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office14" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office15" or l_1_2 == l_1_4 .. "\\microsoft office\\root\\office16" or l_1_2 == l_1_4 .. "\\microsoft office\\office14" or l_1_2 == l_1_4 .. "\\microsoft office\\office15" or l_1_2 == l_1_4 .. "\\microsoft office\\office16" or l_1_2:find(l_1_3 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil or l_1_2:find(l_1_4 .. "\\windowsapps\\microsoft.office.desktop.", 1, true) ~= nil then
    return l_1_0[l_1_1]
  end
  return ""
end

is_signed = function()
  -- function num : 0_1
  local l_2_0 = (mp.GetCertificateInfo)()
  for l_2_4,l_2_5 in pairs(l_2_0) do
    if l_2_5.Signers ~= nil then
      return true
    end
  end
  return false
end


