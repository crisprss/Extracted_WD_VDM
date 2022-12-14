-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3437.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = {}
l_0_1["explorer.exe"] = true
l_0_1["unzip.exe"] = true
l_0_1["rar.exe"] = true
l_0_1["winrar.exe"] = true
l_0_1["winzip.exe"] = true
l_0_1["winzip32.exe"] = true
l_0_1["winzip64.exe"] = true
l_0_1["7z.exe"] = true
l_0_1["7zfm.exe"] = true
l_0_1["7zg.exe"] = true
l_0_1["irsetup.exe"] = true
if l_0_1[l_0_0] ~= true then
  return mp.CLEAN
end
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if not (MpCommon.QueryPersistContext)(l_0_2, "DroppedByOfficeProc") then
  return mp.CLEAN
end
local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_4 = (mp.GetProcessCommandLine)(l_0_3)
if l_0_4 == "" or l_0_4 == nil then
  return mp.CLEAN
end
l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
l_0_2 = (l_0_2 == nil and "" or l_0_2):lower()
if (string.find)((string.lower)(l_0_4), l_0_2, 1, true) == nil then
  return mp.CLEAN
end
local l_0_5 = l_0_0 .. "+" .. l_0_3
if (MpCommon.GetPersistContextCountNoPath)("BlockOfficeCreateExecContentProcs") == 0 then
  local l_0_6 = {}
  ;
  (table.insert)(l_0_6, l_0_5)
  ;
  (MpCommon.SetPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_6, 0)
else
  do
    if not (MpCommon.QueryPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_5) then
      (MpCommon.AppendPersistContextNoPath)("BlockOfficeCreateExecContentProcs", l_0_5, 0)
    end
    return mp.CLEAN
  end
end

