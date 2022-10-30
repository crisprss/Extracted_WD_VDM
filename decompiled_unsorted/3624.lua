-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3624.luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  if type(l_1_1) == "table" then
    if l_1_2 == nil then
      l_1_2 = 4
    end
    return l_1_0 ~= nil and l_1_1 ~= nil and l_1_2 <= #l_1_0 and l_1_1[(string.sub)(l_1_0, -l_1_2)] ~= nil
  end
  do return l_1_1 == "" or (string.sub)(l_1_0, -(string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 3 unprocessed JMP targets
end

local l_0_1 = function(l_2_0, l_2_1)
  -- function num : 0_1
  do return (string.sub)(l_2_0, 1, (string.len)(l_2_1)) == l_2_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_2 = (skip.get_contextdata)(skip.CONTEXT_DATA_SCANREASON)
if l_0_2 == 12 then
  local l_0_3 = (string.lower)((skip.get_contextdata)(32))
  if l_0_3 == "exchange server 2019" or l_0_3 == "exchange server 2016" then
    local l_0_4 = (string.lower)((skip.get_contextdata)(34))
    if l_0_1(l_0_4, "urlpath:/mapi/emsmdb") or l_0_1(l_0_4, "urlpath:/rpc/rpcproxy.dll") or l_0_1(l_0_4, "urlpath:/owa/service.svc") then
      return true
    end
  end
end
do
  if l_0_2 ~= skip.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_2 ~= skip.SCANREASON_ONOPEN then
    return 0
  end
  if (skip.get_contextdata)(skip.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
    return 0
  end
  local l_0_5 = function(l_3_0, l_3_1)
  -- function num : 0_2
  if l_3_0 == "excel.exe" or l_3_0 == "winword.exe" or l_3_0 == "powerpnt.exe" or l_3_0 == "outlook.exe" or l_3_0 == "msaccess.exe" or l_3_0 == "mspub.exe" then
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files %(x86%)\\microsoft office\\root\\office") ~= nil then
      return true
    end
    if l_3_1:find("^\\device\\harddiskvolume%d*\\program files\\windowsapps\\microsoft%.office%.desktop%.") ~= nil then
      return true
    end
  end
  return false
end

  local l_0_6 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_FILEPATH))
  local l_0_7 = (skip.get_contextdata)(skip.CONTEXT_DATA_PROCESS_ID)
  if l_0_7 == 4 and l_0_2 == skip.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\") ~= nil and l_0_6 ~= nil and "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\" ~= nil then
    return 1
  end
  local l_0_8 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_FILENAME))
  if l_0_8 == "pagefile.sys" or l_0_8 == "hiberfil.sys" or l_0_8 == "swapfile.sys" then
    if l_0_6:match("^\\device\\harddiskvolumeshadowcopy%d*$") ~= nil then
      return 1
    end
    if l_0_6:match("^\\device\\harddiskvolume%d*$") ~= nil then
      return 1
    end
  end
  local l_0_9 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSNAME))
  if l_0_9 == "rundll32.exe" or l_0_9 == "dllhost.exe" or l_0_9 == "regsvr32.exe" or l_0_9 == "cscript.exe" or l_0_9 == "jscript.exe" or l_0_9 == "cmd.exe" or l_0_9 == "curl.exe" or l_0_9 == "powershell.exe" or l_0_9 == "powershell_ise.exe" or l_0_9 == "wscript.exe" or l_0_9 == "mshta.exe" or l_0_9 == "csc.exe" or l_0_9 == "jsc.exe" or l_0_9 == "vbc.exe" then
    return 0
  end
  local l_0_10 = (string.lower)((skip.get_contextdata)(skip.CONTEXT_DATA_PROCESSDEVICEPATH))
  if l_0_9 == "software_reporter_tool.exe" and l_0_10:find("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data\\swreporter\\") ~= nil then
    return 1
  end
  if l_0_9 == "wmiprvse.exe" and l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\") ~= nil and l_0_8:match("^dr%d*$") then
    return 1
  end
  if l_0_2 == skip.SCANREASON_ONOPEN and l_0_9 == "idwutil_600.exe" and l_0_0(l_0_10, "\\program files (x86)\\idrivewindows\\cmd_dutil") then
    return 1
  end
  if l_0_2 == skip.SCANREASON_ONMODIFIEDHANDLECLOSE then
    if l_0_5(l_0_9, l_0_10) and not (skip.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") and not (skip.IsHipsRuleEnabled)("92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B") and not (skip.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") and not (skip.IsHipsRuleEnabled)("c28bf0fb-388c-438b-a41d-8688461af900") and not l_0_0(l_0_8, ".xoml") then
      return 1
    end
    if l_0_9 == "winrar.exe" or (string.sub)(l_0_9, 1, 2) == "7z" and (l_0_9 == "7z.exe" or l_0_9 == "7za.exe" or l_0_9 == "7zfm.exe" or l_0_9 == "7zg.exe" or (string.find)(l_0_9, "7z%d%d%d%d%-x64%.exe") ~= nil or (string.find)(l_0_9, "7z%d%d%d%d%.exe") ~= nil) then
      local l_0_11 = {}
      l_0_11[".exe"] = true
      l_0_11[".scr"] = true
      l_0_11[".com"] = true
      l_0_11[".bat"] = true
      l_0_11[".cmd"] = true
      l_0_11[".pif"] = true
      l_0_11[".jar"] = true
      l_0_11[".lnk"] = true
      l_0_11[".jse"] = true
      l_0_11[".vbs"] = true
      l_0_11[".vbe"] = true
      l_0_11[".wsf"] = true
      l_0_11[".hta"] = true
      l_0_11[".wsh"] = true
      l_0_11[".ps1"] = true
      local l_0_12 = {}
      l_0_12[".xls"] = true
      l_0_12.xlsx = true
      l_0_12.xlsm = true
      l_0_12.xlsb = true
      l_0_12.xltx = true
      l_0_12.xltm = true
      l_0_12[".xlt"] = true
      l_0_12.xlam = true
      l_0_12[".xla"] = true
      l_0_12[".doc"] = true
      l_0_12.docx = true
      l_0_12.docm = true
      l_0_12.dotx = true
      l_0_12.dotm = true
      l_0_12[".rtf"] = true
      l_0_12[".ppt"] = true
      l_0_12.pptm = true
      l_0_12[".pps"] = true
      l_0_12.pptx = true
      l_0_12.ppsx = true
      l_0_12[".odt"] = true
      local l_0_13 = {}
      l_0_13[".iso"] = true
      l_0_13[".img"] = true
      l_0_13[".dmg"] = true
      if not (skip.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") and not l_0_0(l_0_8, l_0_11) and (not l_0_0(l_0_8, l_0_12) or l_0_0(l_0_8, l_0_13) or (string.len)(l_0_6) <= 25 or (string.find)(l_0_6, "\\appdata\\local\\temp\\rar$", 1, true) ~= nil or (string.find)(l_0_6, "\\appdata\\local\\temp\\7z", 1, true) == nil) then
        return 1
      end
    end
    do
      if (string.find)(l_0_9, "setup", 1, true) ~= nil or (string.find)(l_0_9, "install", 1, true) ~= nil then
        return 1
      end
      if (string.find)(l_0_6, "\\program files", 1, true) ~= nil then
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files\\") ~= nil then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files %(x86%)\\") ~= nil then
          return 1
        end
      end
      if l_0_1(l_0_6, "\\device\\mup\\") then
        return 1
      end
      if (string.find)(l_0_10, "\\programdata\\ul\\pcmark", 1, true) ~= nil then
        return 1
      end
      if (string.find)(l_0_10, "\\program files\\windowsapps\\", 1, true) ~= nil or (string.find)(l_0_10, "\\windows\\systemapps\\", 1, true) ~= nil then
        return 1
      end
      if l_0_0(l_0_9, ".tmp") then
        if l_0_0(l_0_8, ".tmp") then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files\\") ~= nil then
          return 1
        end
        if l_0_6:match("^\\device\\harddiskvolume%d*\\program files %(x86%)\\") ~= nil then
          return 1
        end
      end
      if (string.sub)(l_0_9, 1, 4) == "npp." and (l_0_0(l_0_9, ".installer.x64.exe") or l_0_0(l_0_9, ".installer.exe")) then
        return 1
      end
      if (string.sub)(l_0_9, 1, 7) == "rstudio" and (string.find)(l_0_9, "rstudio%d%.exe") ~= nil then
        return 1
      end
      if l_0_0(l_0_8, ".html") or l_0_0(l_0_8, ".js") or l_0_0(l_0_8, ".css") then
        if (string.find)(l_0_6, "\\doc\\", 1, true) ~= nil then
          return 1
        end
        if (string.find)(l_0_6, "\\docs\\", 1, true) ~= nil then
          return 1
        end
      end
      do
        local l_0_14, l_0_15 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
        if l_0_14 ~= nil and l_0_15 ~= nil and l_0_14 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\") and l_0_15 == l_0_10 then
          return 1
        end
        if (string.sub)(l_0_9, 1, 4) == "npp." then
          if l_0_0(l_0_9, ".installer.exe") and (string.find)(l_0_6, "^\\device\\harddiskvolume%d*\\program files %(x86%)\\notepad%+%+") ~= nil then
            return 1
          end
          if l_0_0(l_0_9, ".installer.x64.exe") and (string.find)(l_0_6, "^\\device\\harddiskvolume%d*\\program files\\notepad%+%+") ~= nil then
            return 1
          end
        end
        if (l_0_0(l_0_10, "\\windows\\system32") or (string.find)(l_0_10, "\\program files\\windowsapps\\", 1, true) ~= nil) and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "runtimebroker.exe" and l_0_0(l_0_10, "\\windows\\system32") and (string.find)(l_0_6, "appdata\\roaming\\microsoft\\systemcertificates\\my\\certificates", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "waworkerhost.exe" then
          if (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
            return 1
          end
          if l_0_8:match("^%d*$") then
            return 1
          end
        end
        if l_0_9 == "microsoft.office.web.certificatemanager.exe" and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\crypto\\rsa\\machinekeys") ~= nil then
          return 1
        end
        if l_0_9 == "pingsender.exe" and l_0_0(l_0_10, "\\program files\\mozilla firefox") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
          return 1
        end
        if l_0_9 == "chrome.exe" then
          if l_0_0(l_0_10, "\\google\\chrome\\application") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
            return 1
          end
          local l_0_16 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\google\\chrome\\user data")
          if l_0_6 ~= nil and l_0_16 ~= nil and l_0_16 == l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\google\\chrome\\application") then
            return 1
          end
        end
        do
          if l_0_9 == "msedge.exe" or l_0_9 == "msedgewebview2.exe" then
            if l_0_0(l_0_10, "\\application") and (string.find)(l_0_6, "microsoft\\cryptneturlcache\\", 1, true) ~= nil then
              return 1
            end
            local l_0_17, l_0_18 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\user data")
            local l_0_20, l_0_21, l_0_22 = , l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_20 == "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application" then
              return 1
            end
            local l_0_19 = nil
            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\edge([^\\]*)\\application")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_20 == l_0_19 then
              return 1
            end
            -- DECOMPILER ERROR at PC805: Overwrote pending register: R10 in 'AssignReg'

            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_19 ~= nil then
              return 1
            end
            -- DECOMPILER ERROR at PC822: Overwrote pending register: R10 in 'AssignReg'

            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\")
            if l_0_18 ~= nil and l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_18 == l_0_22 and l_0_19 ~= nil then
              return 1
            end
            l_0_17 = l_0_6:match("^\\device\\harddiskvolume(.*)\\windows\\fonts\\")
            if l_0_17 ~= nil and l_0_17 == l_0_21 and l_0_22 ~= nil and l_0_19 ~= nil then
              return 1
            end
          end
          do
            -- DECOMPILER ERROR at PC852: Overwrote pending register: R10 in 'AssignReg'

            -- DECOMPILER ERROR at PC853: Overwrote pending register: R11 in 'AssignReg'

            if l_0_9 == "nuget.exe" and l_0_6:match(l_0_20) ~= nil and l_0_18 ~= nil then
              return 1
            end
            do
              if l_0_9 == "vlc-cache-gen.exe" then
                local l_0_23 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\videolan\\vlc")
                if l_0_23 ~= nil and l_0_23 == l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\videolan\\vlc") then
                  return 1
                end
              end
              if (string.sub)(l_0_9, 1, 5) == "gimp-" and l_0_0(l_0_9, "-setup.tmp") and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\gimp 2") ~= nil then
                return 1
              end
              do
                if (l_0_9 == "setup.exe" or l_0_9 == "un_a.exe") and l_0_2 == skip.SCANREASON_ONOPEN then
                  local l_0_24, l_0_25 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\")
                  -- DECOMPILER ERROR at PC919: Unhandled construct in 'MakeBoolean' P1

                  if l_0_24 ~= nil and l_0_25 ~= nil and l_0_24 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\") and l_0_25 == l_0_10 then
                    return 1
                  end
                end
                if l_0_24 == nil then
                  l_0_24 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla ")
                end
                if l_0_24 == nil then
                  l_0_24 = l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\mozilla ")
                end
                if l_0_24 ~= nil and l_0_24 == l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp") and l_0_10 ~= nil then
                  return 1
                end
                if l_0_5(l_0_9, l_0_10) == true then
                  if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\packages") ~= nil then
                    return 1
                  end
                  if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\temp\\photocache") ~= nil then
                    return 1
                  end
                  if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\office") ~= nil then
                    return 1
                  end
                  if l_0_6:find("^\\device\\harddiskvolume%d*\\users\\[^\\]*\\appdata\\local\\microsoft\\msipc") ~= nil then
                    return 1
                  end
                  if l_0_6:find("microsoft\\cryptneturlcache\\", 1, true) ~= nil then
                    return 1
                  end
                end
                if l_0_9 == "officeclicktorun.exe" then
                  do
                    if l_0_10:match("^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun") == nil then
                      local l_0_26 = l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun")
                    end
                    -- DECOMPILER ERROR at PC998: Confused about usage of register: R9 in 'UnsetPending'

                    -- DECOMPILER ERROR at PC1027: Confused about usage of register: R9 in 'UnsetPending'

                    if (((l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\common files\\microsoft shared\\clicktorun\\updates") == nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\common files\\microsoft shared\\clicktorun\\updates") ~= nil) or l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\microsoft\\clicktorun") == nil) and l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\microsoft office") ~= nil) or l_0_6:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)\\microsoft office") == l_0_26 then
                      return 1
                    end
                    if l_0_0(l_0_8, ".pf") then
                      if l_0_7 == 4 then
                        return 1
                      end
                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\windows\\prefetch") ~= nil then
                        if l_0_1(l_0_8, l_0_9) then
                          return 1
                        end
                        if l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\") ~= nil then
                          return 1
                        end
                      end
                    end
                    if l_0_0(l_0_8, ".log") or l_0_0(l_0_8, ".log1") or l_0_0(l_0_8, ".log2") or l_0_0(l_0_8, ".cat") or l_0_0(l_0_8, ".sqm") or l_0_0(l_0_8, ".etl") or l_0_0(l_0_8, ".db") or l_0_0(l_0_8, ".db3") or l_0_0(l_0_8, ".db-wal") or l_0_0(l_0_8, ".db3-wal") or l_0_0(l_0_8, ".db-journal") or l_0_0(l_0_8, ".db3-journal") or l_0_0(l_0_8, ".bin") or l_0_0(l_0_8, ".dat") or l_0_0(l_0_8, ".dmp") or l_0_0(l_0_8, ".data") or l_0_0(l_0_8, ".mui") or l_0_0(l_0_8, ".edb") or l_0_0(l_0_8, ".chk") or l_0_0(l_0_8, ".ini") or l_0_0(l_0_8, ".evtx") or l_0_0(l_0_8, ".manifest") or l_0_0(l_0_8, ".hve") or l_0_0(l_0_8, ".tmp.xml") or l_0_0(l_0_8, ".tmp.werinternalmetadata.xml") or l_0_0(l_0_8, ".hdmp") or l_0_0(l_0_8, ".dmp") or l_0_0(l_0_8, ".wer") or l_0_0(l_0_8, ".sdb") or l_0_0(l_0_8, ".tmp.appcompat.txt") then
                      if l_0_7 == 4 then
                        return 1
                      end
                      if l_0_9 == "svchost.exe" and l_0_8 == "gpt.ini" and l_0_6:match("^\\device\\mup\\") then
                        return 0
                      end
                      if l_0_10:match("^\\device\\harddiskvolume(.*)\\windows\\system32") ~= nil or l_0_10:match("^\\\\%?\\volume{%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x}\\windows\\system32") ~= nil then
                        return 1
                      end
                      do
                        if l_0_10:match("^\\device\\harddiskvolume(.*)\\program files") == nil and l_0_10:match("^\\device\\harddiskvolume(.*)\\program files %(x86%)") == nil then
                          local l_0_27 = l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata")
                        end
                        -- DECOMPILER ERROR at PC1285: Confused about usage of register: R9 in 'UnsetPending'

                        if l_0_27 ~= nil then
                          return 1
                        end
                        do
                          local l_0_28 = nil
                          if (string.match)(l_0_9, "(%w+)%.") ~= nil and (string.find)(l_0_8, (string.match)(l_0_9, "(%w+)%."), 1, true) ~= nil then
                            return 1
                          end
                          if l_0_9 == "firefox.exe" then
                            if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\([^\\]*)\\mozilla\\firefox\\") ~= nil and l_0_6 ~= nil and "^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\([^\\]*)\\mozilla\\firefox\\" ~= nil then
                              return 1
                            end
                            if l_0_10:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox") ~= nil then
                              if l_0_6:match("^\\device\\harddiskvolume(.*)\\program files\\mozilla firefox") ~= nil then
                                return 1
                              end
                              if l_0_0(l_0_8, ".mui") or l_0_0(l_0_8, ".ttf") or l_0_0(l_0_8, ".icm") or l_0_0(l_0_8, ".db") or l_0_0(l_0_8, ".bin") then
                                return 1
                              end
                            end
                          end
                          local l_0_29 = (string.find)(l_0_9, ".", 1, true)
                          if l_0_29 == nil and (l_0_9 == "cp" or l_0_9 == "dash" or l_0_9 == "node" or l_0_9 == "npm" or l_0_9 == "grep" or l_0_9 == "cat" or l_0_9 == "dpkg" or l_0_9 == "dpkg-query" or l_0_9 == "sudo" or l_0_9 == "apt" or l_0_9 == "store" or l_0_9 == "apt-extracttemplates" or l_0_9 == "perl" or l_0_9 == "systemd-hwdb" or l_0_9 == "ldconfig" or l_0_9 == "update-alternatives") then
                            local l_0_30, l_0_31, l_0_32 = l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs")
                            if l_0_30 ~= nil and l_0_31 ~= nil and l_0_32 ~= nil then
                              local l_0_33, l_0_34 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\usr\\bin")
                              if ("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\([^\\]*)\\localstate\\rootfs\\usr\\bin" ~= nil or l_0_30 == l_0_33) and l_0_31 == l_0_34 and l_0_32 == R15_PC1431 then
                                return 1
                              end
                            end
                          end
                          do
                            do
                              if l_0_9 == "firefox.exe" or l_0_9 == "gimp-2.8.exe" or l_0_9 == "soffice.bin" or l_0_9 == "chrome.exe" then
                                local l_0_35, l_0_36 = l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\chops\\dlc\\([^\\]*)\\")
                                -- DECOMPILER ERROR at PC1450: Overwrote pending register: R13 in 'AssignReg'

                                -- DECOMPILER ERROR at PC1451: Overwrote pending register: R14 in 'AssignReg'

                                if l_0_35 ~= nil and l_0_36 ~= nil then
                                  if l_0_35 == l_0_10:match(l_0_34) or l_0_36 == l_0_33 then
                                    return 1
                                  end
                                  if l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\ul\\pcmark 10\\tmp\\") == l_0_35 then
                                    return 1
                                  end
                                end
                              end
                              do
                                if l_0_9 == "code.exe" then
                                  local l_0_37, l_0_38 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code")
                                  if l_0_37 ~= nil and l_0_38 ~= nil then
                                    if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code") == l_0_37 and l_0_6 == l_0_38 then
                                      return 1
                                    end
                                    -- DECOMPILER ERROR at PC1485: Overwrote pending register: R15 in 'AssignReg'

                                    if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code") == l_0_37 and R13_PC1492 == l_0_38 then
                                      return 1
                                    end
                                  end
                                end
                                do
                                  if l_0_9 == "code - insiders.exe" then
                                    local l_0_39, l_0_40 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders")
                                    if l_0_39 ~= nil and l_0_40 ~= nil then
                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\code") == l_0_39 and R13_PC1492 == l_0_40 then
                                        return 1
                                      end
                                      -- DECOMPILER ERROR at PC1517: Overwrote pending register: R15 in 'AssignReg'

                                      -- DECOMPILER ERROR at PC1520: Overwrote pending register: R13 in 'AssignReg'

                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\programs\\microsoft vs code insiders") == l_0_39 and R13_PC1492 == l_0_40 then
                                        return 1
                                      end
                                    end
                                  end
                                  do
                                    if l_0_9 == "teams.exe" then
                                      local l_0_41, l_0_42 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams")
                                      -- DECOMPILER ERROR at PC1540: Overwrote pending register: R13 in 'AssignReg'

                                      if l_0_41 ~= nil and l_0_42 ~= nil then
                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\roaming\\microsoft\\teams") == l_0_41 and R13_PC1492 == l_0_42 then
                                          return 1
                                        end
                                        -- DECOMPILER ERROR at PC1549: Overwrote pending register: R15 in 'AssignReg'

                                        if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\microsoft\\teams") == l_0_41 and R15_PC1431 == l_0_42 then
                                          return 1
                                        end
                                      end
                                    end
                                    if l_0_9 == "dllhost.exe" and l_0_0(l_0_10, "\\windows\\system32") then
                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client.cbs_cw5n1h2txyewy\\appdata\\cachestorage") ~= nil and l_0_6 ~= nil then
                                        return 1
                                      end
                                      -- DECOMPILER ERROR at PC1577: Overwrote pending register: R13 in 'AssignReg'

                                      if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\packages\\microsoftwindows.client_cw5n1h2txyewy\\appdata\\cachestorage") ~= nil and R11_PC1586 ~= nil then
                                        return 1
                                      end
                                    end
                                    do
                                      if l_0_9 == "_conda.exe" or l_0_9 == "python.exe" or l_0_9 == "pythonw.exe" then
                                        local l_0_43, l_0_44 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d"), R11_PC1586
                                        -- DECOMPILER ERROR at PC1608: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_43 ~= nil and l_0_44 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\miniconda%d\\") == l_0_43 and R13_PC1492 == l_0_44 then
                                          return 1
                                        end
                                        -- DECOMPILER ERROR at PC1617: Overwrote pending register: R13 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC1620: Overwrote pending register: R11 in 'AssignReg'

                                        l_0_43 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d")
                                        -- DECOMPILER ERROR at PC1628: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_43 ~= nil and l_0_44 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\anaconda%d\\") == l_0_43 and R13_PC1492 == l_0_44 then
                                          return 1
                                        end
                                        -- DECOMPILER ERROR at PC1637: Overwrote pending register: R13 in 'AssignReg'

                                        l_0_43 = l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d")
                                        -- DECOMPILER ERROR at PC1644: Overwrote pending register: R13 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC1649: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_43 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\miniconda%d") == l_0_43 then
                                          return R13_PC1492
                                        end
                                        -- DECOMPILER ERROR at PC1651: Overwrote pending register: R13 in 'AssignReg'

                                        l_0_43 = l_0_10:match("^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d")
                                        -- DECOMPILER ERROR at PC1658: Overwrote pending register: R13 in 'AssignReg'

                                        -- DECOMPILER ERROR at PC1663: Overwrote pending register: R13 in 'AssignReg'

                                        if l_0_43 ~= nil and l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata\\anaconda%d") == l_0_43 then
                                          return R13_PC1492
                                        end
                                      end
                                      -- DECOMPILER ERROR at PC1668: Overwrote pending register: R11 in 'AssignReg'

                                      if l_0_9 == "machinelocalwatchdog.exe" and (l_0_8:match("%w*")) ~= nil then
                                        return 1
                                      end
                                      if l_0_9 == "savservice.exe" and (l_0_8:match("%w*")) ~= nil then
                                        return 1
                                      end
                                      if (l_0_9 == "postgres.exe" or l_0_9 == "postgresinstanceagentrunnerhost.exe") and (l_0_8:match("%w*")) ~= nil then
                                        return 1
                                      end
                                      do
                                        if l_0_9 == "javaw.exe" or l_0_9 == "java.exe" or l_0_9 == "javac.exe" then
                                          local l_0_45, l_0_46 = l_0_10:match("^\\device\\harddiskvolume(.*)\\(.*)\\java\\jdk([^\\]*)\\bin")
                                          -- DECOMPILER ERROR at PC1713: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1716: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1719: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1722: Overwrote pending register: R13 in 'AssignReg'

                                          -- DECOMPILER ERROR at PC1723: Overwrote pending register: R15 in 'AssignReg'

                                          if l_0_45 ~= R13_PC1492 and l_0_46 ~= R13_PC1492 and "^\\device\\harddiskvolume(.*)\\(.*)\\java\\jdk([^\\]*)\\bin" ~= R13_PC1492 then
                                            R13_PC1492 = R13_PC1492(l_0_6, R15_PC1431)
                                            -- DECOMPILER ERROR at PC1729: Overwrote pending register: R15 in 'AssignReg'

                                            if R13_PC1492 == l_0_45 and l_0_6 == l_0_46 then
                                              return R15_PC1431
                                            end
                                            -- DECOMPILER ERROR at PC1731: Overwrote pending register: R15 in 'AssignReg'

                                            R15_PC1431 = R15_PC1431(l_0_6, "^\\device\\harddiskvolume(.*)\\(.*)\\java\\gwdlso\\")
                                            if R15_PC1431 == l_0_45 and l_0_6 == l_0_46 then
                                              return 1
                                            end
                                          end
                                        end
                                        do
                                          if l_0_9 == "svchost.exe" or l_0_9 == "lsass.exe" or l_0_9 == "services.exe" or l_0_9 == "taskhostw.exe" then
                                            local l_0_47 = (l_0_10:match("^\\\\%?\\volume(.*)\\windows\\system32"))
                                            if l_0_47 ~= nil then
                                              if l_0_6:match(R13_PC1492) == l_0_47 then
                                                return 1
                                              end
                                              -- DECOMPILER ERROR at PC1764: Overwrote pending register: R13 in 'AssignReg'

                                              -- DECOMPILER ERROR at PC1769: Overwrote pending register: R13 in 'AssignReg'

                                              if l_0_6:match("^\\device\\vhdharddisk(.*)\\programdata") == l_0_47 then
                                                return R13_PC1492
                                              end
                                              -- DECOMPILER ERROR at PC1771: Overwrote pending register: R13 in 'AssignReg'

                                              R13_PC1492 = (R13_PC1492(l_0_6, R15_PC1431))
                                              if R13_PC1492 ~= nil then
                                                return 1
                                              end
                                              -- DECOMPILER ERROR at PC1779: Overwrote pending register: R15 in 'AssignReg'

                                              -- DECOMPILER ERROR at PC1782: Overwrote pending register: R15 in 'AssignReg'

                                              -- DECOMPILER ERROR at PC1785: Overwrote pending register: R15 in 'AssignReg'

                                              if (l_0_6:match("^\\device\\harddiskvolume(.*)\\programdata")) ~= R15_PC1431 then
                                                return R15_PC1431
                                              end
                                            end
                                          end
                                          do
                                            if l_0_9 == "fusion360.exe" then
                                              local l_0_48, l_0_49 = l_0_10:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production")
                                              if l_0_48 ~= nil and l_0_49 ~= nil then
                                                if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\autodesk\\webdeploy\\production\\") == l_0_48 and R13_PC1492 == l_0_49 then
                                                  return 1
                                                end
                                                -- DECOMPILER ERROR at PC1808: Overwrote pending register: R15 in 'AssignReg'

                                                -- DECOMPILER ERROR at PC1811: Overwrote pending register: R13 in 'AssignReg'

                                                if l_0_6:match("^\\device\\harddiskvolume(.*)\\users\\([^\\]*)\\appdata\\local\\temp\\fusionstreamer\\") == l_0_48 and R13_PC1492 == l_0_49 then
                                                  return 1
                                                end
                                              end
                                            end
                                            return 0
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
              end
            end
          end
        end
      end
    end
  end
end

