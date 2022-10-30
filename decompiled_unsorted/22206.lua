-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22206.luac 

-- params : ...
-- function num : 0
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 7) then
  local l_0_0 = "hmd_precision_strike"
  local l_0_1 = 300
  local l_0_2 = 60
  local l_0_3 = 100
  local l_0_4, l_0_5 = pcall(MpCommon.RollingQueueQueryKey, l_0_0, "already_ran")
  local l_0_6 = {}
  if l_0_4 and l_0_5 then
    return mp.CLEAN
  end
  local l_0_7 = "http://962b56e5-5eb2-4ed3-8757-3f22f190d202.info"
  local l_0_8 = {}
  l_0_8[1] = l_0_7
  local l_0_9 = {}
  l_0_9.SIG_CONTEXT = "LUA_GENERIC"
  l_0_9.CONTENT_SOURCE = "HEIMDALL_PRECISION_STRIKE"
  local l_0_10 = {}
  local l_0_11, l_0_12 = pcall(mp.GetUrlReputation, l_0_8, l_0_9)
  if not l_0_11 or not l_0_12 or not l_0_12.urls then
    return mp.CLEAN
  end
  AppendToRollingQueue(l_0_0, "already_ran", 1, l_0_1)
  local l_0_13 = "hmd_precision_strike_scanfile_count"
  AppendToRollingQueue(l_0_13, "max_scan", l_0_3, l_0_2)
  for l_0_17,l_0_18 in ipairs(l_0_12.urls) do
    if l_0_18.determination == 4 then
      local l_0_19 = l_0_18.urlresponsecontext
      local l_0_20 = ""
      if l_0_19 then
        for l_0_24,l_0_25 in ipairs(l_0_19) do
          if l_0_25.key == "Payload" then
            l_0_20 = l_0_25.value
            break
          end
        end
      end
      do
        local l_0_26 = {}
        local l_0_27 = split(l_0_20, "++")
        for l_0_31,l_0_32 in ipairs(l_0_27) do
          local l_0_33 = split(l_0_32, "::")
          local l_0_34 = l_0_33[1]
          l_0_26[l_0_34] = l_0_33[2]
        end
        local l_0_35 = l_0_26
        for l_0_39,l_0_40 in pairs(l_0_35) do
          local l_0_41 = l_0_39
          l_0_10[l_0_41] = l_0_40
        end
        if l_0_10.ttl then
          l_0_2 = l_0_10.ttl
        end
        if l_0_10.suppress_ttl then
          l_0_1 = l_0_10.suppress_ttl
        end
        if l_0_10.scanpath then
          local l_0_42 = l_0_10.scanpath
          local l_0_43 = split(l_0_42, ",")
          for l_0_47,l_0_48 in ipairs(l_0_43) do
            local l_0_49 = (string.lower)((MpCommon.Base64Decode)(l_0_48))
            local l_0_50 = "hmd_precision_strike_folderscan"
            AppendToRollingQueue(l_0_50, l_0_49, 1, l_0_2)
            ;
            (mp.TriggerScanResource)("folder", l_0_49, 0)
          end
        end
        do
          l_0_42 = l_0_10.fullfilepathscan
          if l_0_42 then
            l_0_42 = l_0_10.fullfilepathscan
            local l_0_51 = nil
            l_0_43 = split
            l_0_51 = l_0_42
            l_0_43 = l_0_43(l_0_51, ",")
            local l_0_52 = nil
            l_0_51 = ipairs
            l_0_52 = l_0_43
            l_0_51 = l_0_51(l_0_52)
            for l_0_56,l_0_57 in l_0_51 do
              local l_0_56, l_0_57 = nil
              l_0_56 = string
              l_0_56 = l_0_56.lower
              l_0_57 = MpCommon
              l_0_57 = l_0_57.Base64Decode
              l_0_56 = l_0_56(l_0_57(l_0_55))
              local l_0_58 = nil
              do
                local l_0_59 = nil
                l_0_59 = "hmd_precision_strike_fullfilepathscan"
                l_0_58(l_0_59, l_0_56, 1, l_0_2)
                -- DECOMPILER ERROR at PC181: Overwrote pending register: R33 in 'AssignReg'

                -- DECOMPILER ERROR at PC182: Overwrote pending register: R33 in 'AssignReg'

                l_0_59 = "file"
                l_0_58(l_0_59, l_0_56, 0)
                -- DECOMPILER ERROR at PC187: Confused about usage of register R32 for local variables in 'ReleaseLocals'

                -- DECOMPILER ERROR at PC187: LeaveBlock: unexpected jumping out DO_STMT

              end
            end
          end
          l_0_42 = l_0_10.scanfile
          if l_0_42 then
            l_0_42 = l_0_10.scanfile
            local l_0_60 = nil
            l_0_43 = split
            l_0_43 = l_0_43(l_0_42, ",")
            local l_0_61 = l_0_58
            for l_0_65,l_0_66 in ipairs(l_0_43) do
              local l_0_62, l_0_63, l_0_64, l_0_65, l_0_66 = nil
              l_0_56 = string
              l_0_56 = l_0_56.lower
              l_0_60 = MpCommon
              l_0_60 = l_0_60.Base64Decode
              -- DECOMPILER ERROR at PC205: Confused about usage of register: R30 in 'UnsetPending'

              l_0_61 = l_0_55
              l_0_56 = l_0_56(l_0_60(l_0_61))
              local l_0_67 = nil
              local l_0_68 = nil
              AppendToRollingQueue(l_0_62, l_0_63, l_0_64, l_0_65)
            end
          end
          do
            l_0_42 = l_0_10.maxscan
            if l_0_42 then
              l_0_42 = tonumber
              l_0_43 = l_0_10.maxscan
              l_0_42 = l_0_42(l_0_43)
              l_0_3 = l_0_42
              l_0_42 = "hmd_precision_strike_scanfile_count"
              local l_0_69 = l_0_62
              l_0_43 = AppendToRollingQueue
              l_0_43(l_0_42, "max_scan", l_0_3, l_0_2)
            end
            do
              l_0_42 = l_0_10.process
              if l_0_42 then
                l_0_42 = mp
                l_0_42 = l_0_42.get_contextdata
                l_0_43 = mp
                l_0_43 = l_0_43.CONTEXT_DATA_PROCESS_PPID
                l_0_42 = l_0_42(l_0_43)
                local l_0_70 = nil
                if l_0_42 == nil then
                  l_0_43 = MpCommon
                  l_0_43 = l_0_43.ExpandEnvironmentVariables
                  l_0_43 = l_0_43("%windir%")
                  local l_0_71 = l_0_63
                  local l_0_72 = l_0_64
                  local l_0_73 = l_0_65
                  -- DECOMPILER ERROR at PC263: Overwrote pending register: R31 in 'AssignReg'

                  if #(sysio.GetProcessFromFileName)(l_0_43 .. "\\system32\\" .. "svchost.exe") > 0 then
                    l_0_42 = (string.format)("pid:%d,ProcessStart:%u", (((sysio.GetProcessFromFileName)(l_0_43 .. "\\system32\\" .. "svchost.exe"))[1]).pid, l_0_56)
                  end
                end
                do
                  do
                    l_0_43 = MpCommon
                    l_0_43 = l_0_43.BmTriggerSig
                    l_0_43(l_0_42, "Heimdall_ProcessDispatch", l_0_10.process)
                    l_0_42 = l_0_10.firewall
                    if l_0_42 then
                      l_0_42 = l_0_10.firewall
                      local l_0_74 = nil
                      l_0_43 = split
                      l_0_43 = l_0_43(l_0_42, ",")
                      local l_0_75 = nil
                      for l_0_79,l_0_80 in ipairs(l_0_43) do
                        local l_0_76, l_0_77, l_0_78, l_0_79, l_0_80 = nil
                        -- DECOMPILER ERROR at PC284: Overwrote pending register: R31 in 'AssignReg'

                        -- DECOMPILER ERROR at PC285: Overwrote pending register: R31 in 'AssignReg'

                        -- DECOMPILER ERROR at PC286: Confused about usage of register: R30 in 'UnsetPending'

                        l_0_56 = l_0_56((((sysio.GetProcessFromFileName)(l_0_43 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_81 = nil
                        if l_0_56 then
                          l_0_56 = explode(l_0_56, l_0_74)
                          if #l_0_56 == 3 then
                            local l_0_82 = nil
                            local l_0_83 = nil
                            -- DECOMPILER ERROR at PC303: Overwrote pending register: R34 in 'AssignReg'

                            local l_0_84 = nil
                            local l_0_85 = nil
                            -- DECOMPILER ERROR at PC306: Overwrote pending register: R36 in 'AssignReg'

                            -- DECOMPILER ERROR at PC312: Overwrote pending register: R36 in 'AssignReg'

                            -- DECOMPILER ERROR at PC314: Overwrote pending register: R37 in 'AssignReg'

                            -- DECOMPILER ERROR at PC315: Overwrote pending register: R37 in 'AssignReg'

                            -- DECOMPILER ERROR at PC316: Overwrote pending register: R38 in 'AssignReg'

                            -- DECOMPILER ERROR at PC321: Overwrote pending register: R37 in 'AssignReg'

                            ;
                            (MpCommon.AddBlockingFirewallRule)(l_0_74, l_0_75, l_0_76, l_0_77)
                          end
                        end
                      end
                    end
                    l_0_42 = l_0_10.sinkholedns
                    if l_0_42 then
                      l_0_42 = l_0_10.sinkholedns
                      local l_0_91 = l_0_76
                      l_0_43 = split
                      l_0_43 = l_0_43(l_0_42, ",")
                      local l_0_92 = l_0_77
                      for l_0_96,l_0_97 in ipairs(l_0_43) do
                        local l_0_93, l_0_94, l_0_95, l_0_96, l_0_97 = l_0_78, l_0_79
                        l_0_56 = MpCommon
                        l_0_56 = l_0_56.Base64Decode
                        -- DECOMPILER ERROR at PC340: Confused about usage of register: R30 in 'UnsetPending'

                        l_0_56 = l_0_56((((sysio.GetProcessFromFileName)(l_0_43 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_98 = nil
                        -- DECOMPILER ERROR at PC346: Overwrote pending register: R34 in 'AssignReg'

                        if l_0_56 then
                          l_0_56 = explode(l_0_56, l_0_74)
                          -- DECOMPILER ERROR at PC352: Overwrote pending register: R34 in 'AssignReg'

                          local l_0_99, l_0_100 = nil
                          -- DECOMPILER ERROR at PC354: Overwrote pending register: R34 in 'AssignReg'

                          -- DECOMPILER ERROR at PC355: Overwrote pending register: R35 in 'AssignReg'

                          -- DECOMPILER ERROR at PC359: Overwrote pending register: R34 in 'AssignReg'

                          local l_0_101 = nil
                          local l_0_102 = nil
                          l_0_6[l_0_74], l_0_75 = l_0_75, {res = (MpCommon.AddDnsBlockListDomain)(l_0_56[1], l_0_74), isAllowed = l_0_56[1]}
                        end
                      end
                    end
                    l_0_42 = l_0_10.dnscache
                    if l_0_42 then
                      l_0_42 = l_0_10.dnscache
                      local l_0_103 = l_0_93
                      l_0_43 = split
                      l_0_43 = l_0_43(l_0_42, ",")
                      local l_0_104 = nil
                      for l_0_108,l_0_109 in ipairs(l_0_43) do
                        local l_0_105, l_0_106, l_0_107, l_0_108, l_0_109 = nil
                        l_0_56 = MpCommon
                        l_0_56 = l_0_56.Base64Decode
                        -- DECOMPILER ERROR at PC380: Confused about usage of register: R30 in 'UnsetPending'

                        l_0_56 = l_0_56((((sysio.GetProcessFromFileName)(l_0_43 .. "\\system32\\" .. "svchost.exe"))[1]).pid)
                        local l_0_110 = nil
                        -- DECOMPILER ERROR at PC386: Overwrote pending register: R34 in 'AssignReg'

                        if l_0_56 then
                          l_0_56 = explode(l_0_56, l_0_74)
                          local l_0_111 = nil
                          -- DECOMPILER ERROR at PC391: Overwrote pending register: R34 in 'AssignReg'

                          for l_0_91,l_0_92 in ipairs(l_0_74) do
                            local l_0_112, l_0_113, l_0_114, l_0_115, l_0_116 = nil
                            l_0_103 = mp
                            l_0_103 = l_0_103.GetDnsCacheRecordsByType
                            l_0_104 = l_0_92
                            l_0_103 = l_0_103(l_0_104)
                            l_0_103 = "dnscache"
                            l_0_104 = "_"
                            l_0_105 = l_0_92
                            l_0_103 = l_0_103 .. l_0_104 .. l_0_105
                            l_0_6[l_0_103] = {[l_0_92] = l_0_103}
                          end
                        end
                      end
                    end
                    l_0_42 = l_0_10.debug
                    if l_0_42 then
                      l_0_42 = l_0_10.debug
                      local l_0_117 = nil
                      l_0_43 = split
                      l_0_43 = l_0_43(l_0_42, ",")
                      local l_0_118 = nil
                      do
                        local l_0_119 = nil
                        for l_0_123,l_0_56 in ipairs(l_0_43) do
                          local l_0_120, l_0_121, l_0_122, l_0_123, l_0_124 = nil
                          local l_0_125 = nil
                          -- DECOMPILER ERROR at PC426: Overwrote pending register: R34 in 'AssignReg'

                          local l_0_126 = nil
                          local l_0_127, l_0_128 = nil
                          -- DECOMPILER ERROR at PC430: Overwrote pending register: R36 in 'AssignReg'

                          -- DECOMPILER ERROR at PC431: Overwrote pending register: R37 in 'AssignReg'

                          for l_0_104,l_0_105 in l_0_91(l_0_92) do
                            local l_0_129, l_0_130, l_0_131, l_0_132, l_0_133 = nil
                            -- DECOMPILER ERROR at PC439: Overwrote pending register: R34 in 'AssignReg'

                            -- DECOMPILER ERROR at PC440: Overwrote pending register: R35 in 'AssignReg'

                            -- DECOMPILER ERROR at PC443: Confused about usage of register: R34 in 'UnsetPending'

                            -- DECOMPILER ERROR at PC443: Overwrote pending register: R41 in 'AssignReg'

                            -- DECOMPILER ERROR at PC444: Overwrote pending register: R42 in 'AssignReg'

                            -- DECOMPILER ERROR at PC445: Overwrote pending register: R43 in 'AssignReg'

                            -- DECOMPILER ERROR at PC446: Overwrote pending register: R41 in 'AssignReg'

                            if nil == "PC" then
                              local l_0_134 = nil
                              -- DECOMPILER ERROR at PC447: Overwrote pending register: R42 in 'AssignReg'

                              -- DECOMPILER ERROR at PC448: Overwrote pending register: R43 in 'AssignReg'

                              l_0_119 = MpCommon
                              l_0_119 = l_0_119.GetPersistContext
                              -- DECOMPILER ERROR at PC451: Confused about usage of register: R35 in 'UnsetPending'

                              l_0_120 = nil
                              l_0_117 = l_0_117(l_0_118(l_0_119, l_0_120))
                            else
                              -- DECOMPILER ERROR at PC456: Confused about usage of register: R34 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC458: Confused about usage of register: R34 in 'UnsetPending'

                              -- DECOMPILER ERROR at PC458: Overwrote pending register: R41 in 'AssignReg'

                              if nil == "PCNP" then
                                l_0_117 = ":"
                                -- DECOMPILER ERROR at PC460: Confused about usage of register: R35 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC461: Overwrote pending register: R41 in 'AssignReg'

                                local l_0_135 = nil
                                l_0_117 = table_pack
                                -- DECOMPILER ERROR at PC466: Confused about usage of register: R35 in 'UnsetPending'

                                l_0_117 = l_0_117(pcall(MpCommon.GetPersistContextNoPath, l_0_120))
                              else
                                -- DECOMPILER ERROR at PC471: Confused about usage of register: R34 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC473: Confused about usage of register: R34 in 'UnsetPending'

                                -- DECOMPILER ERROR at PC473: Overwrote pending register: R41 in 'AssignReg'

                                if nil == "RQ" then
                                  l_0_117 = ":"
                                  -- DECOMPILER ERROR at PC475: Confused about usage of register: R35 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC476: Overwrote pending register: R41 in 'AssignReg'

                                  local l_0_136 = nil
                                  l_0_117 = table_pack
                                  -- DECOMPILER ERROR at PC481: Confused about usage of register: R35 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC481: Overwrote pending register: R45 in 'AssignReg'

                                  l_0_117 = l_0_117(pcall(MpCommon.RollingQueueQuery, l_0_120))
                                else
                                  -- DECOMPILER ERROR at PC486: Confused about usage of register: R34 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC488: Confused about usage of register: R34 in 'UnsetPending'

                                  -- DECOMPILER ERROR at PC488: Overwrote pending register: R41 in 'AssignReg'

                                  if nil == "AC" then
                                    l_0_117 = ":"
                                    -- DECOMPILER ERROR at PC490: Confused about usage of register: R35 in 'UnsetPending'

                                    -- DECOMPILER ERROR at PC491: Overwrote pending register: R41 in 'AssignReg'

                                    local l_0_137 = nil
                                    l_0_117 = table_pack
                                    -- DECOMPILER ERROR at PC496: Confused about usage of register: R35 in 'UnsetPending'

                                    -- DECOMPILER ERROR at PC496: Overwrote pending register: R45 in 'AssignReg'

                                    l_0_117 = l_0_117(pcall(MpCommon.AtomicCounterValueEx, l_0_120))
                                  end
                                end
                              end
                            end
                          end
                        end
                        l_0_6.debug = {[l_0_106] = l_0_117, [l_0_106] = l_0_117, [l_0_106] = l_0_117, [l_0_106] = l_0_117}
                        -- DECOMPILER ERROR at PC505: Confused about usage of register R44 for local variables in 'ReleaseLocals'

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC505: LeaveBlock: unexpected jumping out IF_STMT

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
  local l_0_138 = nil
  do
    local l_0_139 = l_0_120
    l_0_9.report = json_encode(l_0_6)
    pcall(mp.GetUrlReputation, R18_PC519, l_0_19)
    do return mp.CLEAN end
    -- DECOMPILER ERROR at PC523: Confused about usage of register R43 for local variables in 'ReleaseLocals'

    l_0_0 = mp
    l_0_0 = l_0_0.CLEAN
    do return l_0_0 end
    -- DECOMPILER ERROR: 16 unprocessed JMP targets
  end
end

