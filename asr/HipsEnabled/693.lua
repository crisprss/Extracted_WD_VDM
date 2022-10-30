-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/693.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if not (mp.IsHipsRuleEnabled)("a8f5898e-1dc8-49a9-9878-85004b8a61e6") then
  return mp.CLEAN
end
local l_0_1 = "enghipscpy:blockaccess:a8f5898e-1dc8-49a9-9878-85004b8a61e6"
local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
l_0_2 = (string.lower)(l_0_2)
local l_0_3 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_3 == nil or l_0_3 == "" then
  return mp.CLEAN
end
if l_0_0 == mp.SCANREASON_ONOPEN then
  if not (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  ;
  (mp.SetHipsRule)("a8f5898e-1dc8-49a9-9878-85004b8a61e6")
  return mp.BLOCKEXECUTION
else
  if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    if not (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
      return mp.CLEAN
    end
    local l_0_4 = (MpCommon.ExpandEnvironmentVariables)("%ExchangeInstallPath%")
    if l_0_4 == nil or l_0_4 == "" then
      return mp.CLEAN
    end
    if not (sysio.IsFileExists)(l_0_4 .. "bin\\Microsoft.Exchange.Store.Service.exe") then
      return mp.CLEAN
    end
    local l_0_5 = (string.lower)(l_0_4)
    if (string.find)(l_0_3, l_0_5 .. "clientaccess\\oab\\temp\\", 1, true) ~= nil then
      return mp.CLEAN
    end
    if l_0_2 == "asrtestfile-a8f5898e-1dc8-49a9-9878-85004b8a61e6.asp" then
      (mp.set_mpattribute)("MpDisableCaching")
      if (MpCommon.GetPersistContextCount)(l_0_3) == 0 then
        local l_0_6 = {}
        ;
        (table.insert)(l_0_6, l_0_1)
        ;
        (MpCommon.SetPersistContext)(l_0_3, l_0_6, 0)
      else
        do
          if not (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
            (MpCommon.AppendPersistContext)(l_0_3, l_0_1, 0)
          end
          ;
          (mp.SetHipsRule)("a8f5898e-1dc8-49a9-9878-85004b8a61e6")
          do return mp.BLOCKACCESS end
          local l_0_7 = (MpCommon.ExpandEnvironmentVariables)("%SystemDrive%\\inetpub\\wwwroot")
          if l_0_7 == nil or l_0_7 == "" then
            return mp.CLEAN
          end
          local l_0_8 = (string.lower)(l_0_7)
          if l_0_8 == nil or l_0_8 == "" then
            return mp.CLEAN
          end
          if (string.find)(l_0_3, l_0_8, 1, true) then
            (mp.set_mpattribute)("MpDisableCaching")
            if (MpCommon.GetPersistContextCount)(l_0_3) == 0 then
              local l_0_9 = {}
              ;
              (table.insert)(l_0_9, l_0_1)
              ;
              (MpCommon.SetPersistContext)(l_0_3, l_0_9, 0)
            else
              do
                if not (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
                  (MpCommon.AppendPersistContext)(l_0_3, l_0_1, 0)
                end
                ;
                (mp.SetHipsRule)("a8f5898e-1dc8-49a9-9878-85004b8a61e6")
                do return mp.BLOCKACCESS end
                local l_0_10 = (MpCommon.ExpandEnvironmentVariables)("%windir%\\system32\\inetsrv\\config\\applicationHost.config")
                if l_0_10 == nil or l_0_10 == "" then
                  return mp.CLEAN
                end
                local l_0_11 = (MpCommon.GetIisInstallPaths)(l_0_10)
                if l_0_11 == nil or l_0_11 == "" then
                  return mp.CLEAN
                end
                for l_0_15,l_0_16 in ipairs(l_0_11) do
                  if l_0_16.Path ~= nil and l_0_16.Path ~= "" and (string.find)(l_0_3, (string.lower)(l_0_16.Path), 1, true) then
                    (mp.set_mpattribute)("MpDisableCaching")
                    if (MpCommon.GetPersistContextCount)(l_0_3) == 0 then
                      local l_0_17 = {}
                      ;
                      (table.insert)(l_0_17, l_0_1)
                      ;
                      (MpCommon.SetPersistContext)(l_0_3, l_0_17, 0)
                    else
                      do
                        do
                          if not (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
                            (MpCommon.AppendPersistContext)(l_0_3, l_0_1, 0)
                          end
                          ;
                          (mp.SetHipsRule)("a8f5898e-1dc8-49a9-9878-85004b8a61e6")
                          do return mp.BLOCKACCESS end
                          -- DECOMPILER ERROR at PC350: LeaveBlock: unexpected jumping out DO_STMT

                          -- DECOMPILER ERROR at PC350: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                          -- DECOMPILER ERROR at PC350: LeaveBlock: unexpected jumping out IF_STMT

                          -- DECOMPILER ERROR at PC350: LeaveBlock: unexpected jumping out IF_THEN_STMT

                          -- DECOMPILER ERROR at PC350: LeaveBlock: unexpected jumping out IF_STMT

                        end
                      end
                    end
                  end
                end
                l_0_4 = mp
                l_0_4 = l_0_4.CLEAN
                return l_0_4
              end
            end
          end
        end
      end
    end
  end
end

