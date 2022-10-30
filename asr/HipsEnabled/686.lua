-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/686.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4") ~= true then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockexecution:b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4"
local l_0_1 = (mp.getfilename)()
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
else
  if (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) == 264193 then
    local l_0_2 = {}
    l_0_2["cmd.exe"] = true
    l_0_2["powershell.exe"] = true
    l_0_2["wscript.exe"] = true
    l_0_2["cscript.exe"] = true
    l_0_2["schtasks.exe"] = true
    l_0_2["at.exe"] = true
    l_0_2["bitsadmin.exe"] = true
    l_0_2["mshta.exe"] = true
    l_0_2["rundll32.exe"] = true
    l_0_2["regasm.exe"] = true
    l_0_2["regsvc.exe"] = true
    l_0_2["regsvr32.exe"] = true
    l_0_2["msbuild.exe"] = true
    l_0_2["certutil.exe"] = true
    l_0_2["installutil.exe"] = true
    l_0_2["msiexec.exe"] = true
    local l_0_3 = (mp.GetLnkInfo)()
    if l_0_3 == nil or l_0_3 == "" then
      return mp.CLEAN
    end
    local l_0_4 = false
    local l_0_5 = l_0_3.BasePath
    if l_0_5 ~= nil then
      l_0_5 = (mp.ContextualExpandEnvironmentVariables)(l_0_5)
      if l_0_5 ~= nil then
        l_0_5 = (MpCommon.PathToWin32Path)(l_0_5)
        if l_0_5 ~= nil then
          l_0_5 = (string.lower)(l_0_5)
          if (sysio.IsFileExists)(l_0_5) and (l_0_2[(string.match)(l_0_5, "\\([^\\]+%.exe)$")] == true or not (mp.IsKnownFriendlyFile)(l_0_5, false, true)) then
            l_0_4 = true
          end
        end
      end
    end
    if l_0_4 == false then
      local l_0_6 = l_0_3.RelativePath
      if l_0_6 ~= nil then
        if (string.find)(l_0_6, "^%.%.\\") then
          l_0_4 = true
        else
          if (string.find)(l_0_6, "^%.\\") then
            l_0_6 = (string.match)(l_0_6, "^%.\\(.+)$")
          end
          local l_0_7 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)))
          local l_0_8 = l_0_7 .. "\\" .. l_0_6
          if (sysio.IsFileExists)(l_0_8) and (l_0_2[(string.match)(l_0_8, "\\([^\\]+%.exe)$")] == true or not (mp.IsKnownFriendlyFile)(l_0_8, false, true)) then
            l_0_4 = true
          end
        end
      end
    end
    do
      if l_0_4 == false then
        return mp.CLEAN
      end
      ;
      (mp.set_mpattribute)("MpDisableCaching")
      if (MpCommon.GetPersistContextCount)(l_0_1) == 0 then
        local l_0_9 = {}
        ;
        (table.insert)(l_0_9, l_0_0)
        ;
        (MpCommon.SetPersistContext)(l_0_1, l_0_9, 0)
      else
        do
          do
            if not (MpCommon.QueryPersistContext)(l_0_1, l_0_0) then
              (MpCommon.AppendPersistContext)(l_0_1, l_0_0, 0)
            end
            do return mp.INFECTED end
            return mp.CLEAN
          end
        end
      end
    end
  end
end

