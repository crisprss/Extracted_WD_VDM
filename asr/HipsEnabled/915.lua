-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/915.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
local l_0_1 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
l_0_2 = (l_0_2 == nil and "" or l_0_2):lower()
l_0_2 = (MpCommon.PathToWin32Path)(l_0_2)
if l_0_0 == mp.SCANREASON_ONOPEN then
  if not (MpCommon.QueryPersistContext)(l_0_2, l_0_1) then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  ;
  (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKEXECUTION
else
  if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    if not IsEmailCachePath(l_0_2) then
      local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
      if l_0_3 ~= "outlook.exe" and l_0_3 ~= "olk.exe" and l_0_3 ~= "msedgewebview2.exe" then
        return mp.CLEAN
      end
      if l_0_3 == "msedgewebview2.exe" then
        local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
        local l_0_5 = (string.lower)((mp.GetProcessCommandLine)(l_0_4))
        if l_0_5 == nil or (string.len)(l_0_5) == 0 then
          return mp.CLEAN
        end
        local l_0_6 = (string.match)(l_0_5, "%-%-webview%-exe%-name=([^%s]+)")
        if l_0_6 ~= "outlook.exe" and l_0_6 ~= "olk.exe" then
          return mp.CLEAN
        end
      end
    end
    do
      local l_0_7 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
      if l_0_7 == nil or (string.len)(l_0_7) < 4 then
        return mp.CLEAN
      end
      local l_0_8 = ((string.sub)(l_0_7, -4)):match("%.(%w+)$")
      if l_0_8 == nil then
        return mp.CLEAN
      end
      if IsArchiveFileExt(l_0_8) then
        (mp.set_mpattribute)("MpDisableCaching")
        if (mp.get_mpattribute)("Lua:ZipHasEncryptedFileWithExeExtension") or (mp.get_mpattribute)("Lua:RarHasEncryptedFileWithExeExtension") then
          if (MpCommon.GetPersistContextCount)(l_0_2) == 0 then
            local l_0_9 = {}
            ;
            (table.insert)(l_0_9, l_0_1)
            ;
            (MpCommon.SetPersistContext)(l_0_2, l_0_9, 0)
          else
            do
              if not (MpCommon.QueryPersistContext)(l_0_2, l_0_1) then
                (MpCommon.AppendPersistContext)(l_0_2, l_0_1, 0)
              end
              ;
              (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
              do return mp.BLOCKACCESS end
              if (MpCommon.GetPersistContextCount)(l_0_2) == 0 then
                local l_0_10 = {}
                ;
                (table.insert)(l_0_10, "ContextualDropEncryptedArchiveByEmail")
                ;
                (MpCommon.SetPersistContext)(l_0_2, l_0_10, 0)
              else
                do
                  if not (MpCommon.QueryPersistContext)(l_0_2, "ContextualDropEncryptedArchiveByEmail") then
                    (MpCommon.AppendPersistContext)(l_0_2, "ContextualDropEncryptedArchiveByEmail", 300)
                  end
                  if (mp.getfilesize)() > 10485760 then
                    return mp.CLEAN
                  end
                  ;
                  (mp.set_mpattribute)("//Lua:ContextualDropExecutableByEmailClient.B")
                  ;
                  (mp.set_mpattribute)("MpForceScanArchives")
                  if IsSuspiciousFileExt(l_0_8) then
                    do
                      if l_0_8 == "dll" or l_0_8 == "js" or l_0_8 == "exe" then
                        local l_0_11 = (mp.ContextualExpandEnvironmentVariables)("%userprofile%")
                        l_0_11 = (l_0_11 == nil and "" or l_0_11):lower()
                        if (string.find)(l_0_2, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.dll") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.exe") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\microsoft\\office\\[%d%.]+\\wef\\.+%.js") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\roaming\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\roaming\\imanage\\work\\dll\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\roaming\\imanage\\work\\chromium\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\imanage\\work\\dll\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\imanage\\work\\chromium\\", 1, true) ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, l_0_11 .. "\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "%a:\\users\\local_[^\\]+\\inetcache\\ie\\[^\\]+\\[^\\]+%.js") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, "appdata\\local\\microsoft\\windows\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
                          return mp.CLEAN
                        end
                        if (string.find)(l_0_2, ".:\\windows\\microsoft%.net\\assembly\\gac_msil\\[^\\]+\\[^\\]+\\.+%.dll") ~= nil then
                          return mp.CLEAN
                        end
                      end
                      ;
                      (mp.set_mpattribute)("MpDisableCaching")
                      if (MpCommon.GetPersistContextCount)(l_0_2) == 0 then
                        local l_0_12 = {}
                        ;
                        (table.insert)(l_0_12, l_0_1)
                        ;
                        (MpCommon.SetPersistContext)(l_0_2, l_0_12, 0)
                      else
                        do
                          do
                            if not (MpCommon.QueryPersistContext)(l_0_2, l_0_1) then
                              (MpCommon.AppendPersistContext)(l_0_2, l_0_1, 0)
                            end
                            ;
                            (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
                            do return mp.BLOCKACCESS end
                            return mp.CLEAN
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

