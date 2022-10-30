-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1455.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16385 then
    local l_0_6 = ((sigattr_tail[l_0_5]).utf8p1):lower()
    l_0_1[(mp.crc32)(0, l_0_6, 1, #l_0_6)] = 1
  end
end
local l_0_7 = {}
for l_0_11 = 1, l_0_0 do
  if (sigattr_tail[l_0_11]).attribute == 16389 and (sigattr_tail[l_0_11]).utf8p2 == "ATTR_c09458eb" then
    local l_0_12 = (sigattr_tail[l_0_11]).utf8p1
    l_0_7[(mp.crc32)(0, l_0_12, 1, #l_0_12)] = l_0_11
  end
end
local l_0_13 = {}
do
  local l_0_14 = {}
  for l_0_18 = 1, l_0_0 do
    if (sigattr_tail[l_0_18]).attribute == 16386 then
      local l_0_19 = ((sigattr_tail[l_0_18]).utf8p2):lower()
      local l_0_20 = ((sigattr_tail[l_0_18]).utf8p1):lower()
      local l_0_21 = (mp.crc32)(0, l_0_19, 1, #l_0_19)
      local l_0_22 = (mp.crc32)(0, l_0_20, 1, #l_0_20)
      if (l_0_1[l_0_22] ~= nil or l_0_1[l_0_21] ~= nil) and l_0_14[l_0_21] == nil then
        local l_0_23 = l_0_19:match("%.[^%.]+$")
        if l_0_23 ~= nil and (mp.bitand)((mp.GetExtensionClass)(l_0_23), 3) ~= 0 and #l_0_19 < #l_0_20 and l_0_20:find(l_0_19, 1, true) == 1 and l_0_20:byte(#l_0_19 + 1) ~= 58 then
          l_0_14[l_0_21] = 1
          local l_0_24 = l_0_20:match("%.[^%.]+$")
          if (mp.GetExtensionClass)(l_0_24) ~= 4 then
            local l_0_25 = (string.sub)(l_0_20, #l_0_19 + 1)
            if l_0_13[l_0_25] ~= nil then
              (table.insert)(l_0_13[l_0_25], l_0_18)
              if #l_0_13[l_0_25] >= 5 then
                local l_0_26 = {}
                l_0_26.count = 0
                for l_0_30,l_0_31 in pairs(l_0_13[l_0_25]) do
                  local l_0_32 = (sysio.ReadFile)((sigattr_tail[l_0_31]).utf8p1, 0, 4)
                  if l_0_32 ~= nil and l_0_26[l_0_32] == nil then
                    l_0_26[l_0_32] = 1
                    l_0_26.count = l_0_26.count + 1
                  end
                end
                if l_0_26.count > 4 then
                  (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                else
                  ;
                  (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                end
                ;
                (bm.add_related_string)("ransom_extension", l_0_25, bm.RelatedStringBMReport)
                -- DECOMPILER ERROR at PC214: Overwrote pending register: R17 in 'AssignReg'

                if (bm.get_current_process_startup_info)() ~= nil then
                  do
                    local l_0_33, l_0_34 = ((bm.get_current_process_startup_info)()).ppid
                    -- DECOMPILER ERROR at PC216: Confused about usage of register: R17 in 'UnsetPending'

                    local l_0_35 = nil
                    local l_0_36 = "genb_ransom_meta_" .. l_0_33
                    local l_0_37 = "ChangeFile"
                    local l_0_38 = ""
                    local l_0_39 = 1800
                    local l_0_40 = 100
                    local l_0_41 = {}
                    for l_0_45,l_0_46 in pairs(l_0_13[l_0_25]) do
                      local l_0_42 = "FileChain_MainSet:"
                      -- DECOMPILER ERROR at PC229: Confused about usage of register: R29 in 'UnsetPending'

                      do
                        local l_0_48, l_0_49, l_0_50 = , (string.find)((sigattr_tail[R29_PC229]).utf8p1, "\\[^\\]*$") or 0
                        -- DECOMPILER ERROR at PC241: Confused about usage of register: R30 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC243: Confused about usage of register: R31 in 'UnsetPending'

                        local l_0_51 = nil
                        -- DECOMPILER ERROR at PC251: Confused about usage of register: R31 in 'UnsetPending'

                        do
                          if (string.find)(l_0_48, ".", l_0_49, true) ~= nil then
                            local l_0_52 = nil
                            l_0_42 = l_0_42 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_51, l_0_49 + 1, (string.find)(l_0_48, ".", l_0_49, true) - 1), 0, #(string.sub)(l_0_51, l_0_49 + 1, (string.find)(l_0_48, ".", l_0_49, true) - 1))
                            l_0_42 = l_0_42 .. ";" .. (string.sub)(l_0_51, (string.find)(l_0_48, ".", l_0_49, true) + 1) .. ";"
                          end
                          l_0_51 = (sigattr_tail[l_0_47]).utf8p2
                          -- DECOMPILER ERROR at PC296: Confused about usage of register: R31 in 'UnsetPending'

                          -- DECOMPILER ERROR at PC297: Confused about usage of register: R32 in 'UnsetPending'

                          do
                            if (string.find)(l_0_51, ".", (string.find)(l_0_51, "\\[^\\]*$") or 0, true) ~= nil then
                              local l_0_53 = nil
                              l_0_42 = l_0_42 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_51, ((string.find)(l_0_51, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_51, ".", (string.find)(l_0_51, "\\[^\\]*$") or 0, true) - 1), 0, #(string.sub)(l_0_51, ((string.find)(l_0_51, "\\[^\\]*$") or 0) + 1, (string.find)(l_0_51, ".", (string.find)(l_0_51, "\\[^\\]*$") or 0, true) - 1))
                              -- DECOMPILER ERROR at PC313: Confused about usage of register: R32 in 'UnsetPending'

                              l_0_42 = l_0_42 .. ";" .. (string.sub)(l_0_51, (string.find)(l_0_51, ".", (string.find)(l_0_51, "\\[^\\]*$") or 0, true) + 1) .. ";"
                            end
                            ;
                            (bm.add_related_file)((sigattr_tail[l_0_47]).utf8p1)
                            ;
                            (bm.add_related_file)((sigattr_tail[l_0_47]).utf8p2)
                            l_0_38 = l_0_25 .. "|"
                            l_0_38 = l_0_38 .. (sigattr_tail[l_0_47]).utf8p1 .. "|" .. (sigattr_tail[l_0_47]).utf8p2 .. "|"
                            local l_0_54 = nil
                            local l_0_55 = nil
                            local l_0_56 = "Known"
                            if l_0_7[(mp.crc32)(0, (sigattr_tail[l_0_47]).utf8p1, 1, #(sigattr_tail[l_0_47]).utf8p1)] ~= nil or l_0_7[(mp.crc32)(0, (sigattr_tail[l_0_47]).utf8p2, 1, #(sigattr_tail[l_0_47]).utf8p2)] ~= nil then
                              l_0_56 = "Unknown"
                            end
                            l_0_38 = l_0_38 .. l_0_56 .. "|"
                            local l_0_57 = nil
                            l_0_38 = l_0_38 .. (sysio.GetFileSize)((sigattr_tail[l_0_47]).utf8p1) .. "|"
                            local l_0_58 = nil
                            local l_0_59 = nil
                            local l_0_60 = (sysio.GetFileSize)((sigattr_tail[l_0_47]).utf8p1)
                            if l_0_59 ~= nil and l_0_59 > 256 then
                              local l_0_61 = ""
                              -- DECOMPILER ERROR at PC421: Overwrote pending register: R39 in 'AssignReg'

                              if (sysio.ReadFile)((sigattr_tail[l_0_47]).utf8p1, 0, l_0_59) ~= nil then
                                local l_0_62 = ""
                                local l_0_63 = nil
                                local l_0_64 = table.insert
                                l_0_64(l_0_41, {File_Size = l_0_60, FileType = l_0_56, MagicByte = l_0_61, Entropy = l_0_62})
                              end
                            end
                            do
                              do
                                -- DECOMPILER ERROR at PC434: Confused about usage of register: R39 in 'UnsetPending'

                                l_0_38 = l_0_38 .. l_0_61 .. "|" .. l_0_62
                                AppendToRollingQueue(l_0_36, l_0_37, l_0_38, l_0_39, l_0_40, 0)
                                -- DECOMPILER ERROR at PC444: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC444: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC444: LeaveBlock: unexpected jumping out DO_STMT

                                -- DECOMPILER ERROR at PC444: LeaveBlock: unexpected jumping out DO_STMT

                              end
                            end
                          end
                        end
                      end
                    end
                    ;
                    (bm.add_related_string)("ransom_encryptedData", json_encode(l_0_41), bm.RelatedStringBMReport)
                    local l_0_65, l_0_66 = , (bm.get_process_relationships)()
                    for l_0_70,l_0_71 in ipairs(l_0_66) do
                      local l_0_67 = nil
                      -- DECOMPILER ERROR at PC462: Confused about usage of register: R31 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC467: Confused about usage of register: R31 in 'UnsetPending'

                      if l_0_54.image_path ~= nil then
                        (bm.add_related_process)(l_0_54.ppid)
                      end
                    end
                    -- DECOMPILER ERROR at PC472: Confused about usage of register: R26 in 'UnsetPending'

                    for l_0_75,l_0_76 in ipairs(l_0_67) do
                      local l_0_72 = nil
                      -- DECOMPILER ERROR at PC475: Confused about usage of register: R31 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC480: Confused about usage of register: R31 in 'UnsetPending'

                      if l_0_54.image_path ~= nil then
                        (bm.add_related_process)(l_0_54.ppid)
                        -- DECOMPILER ERROR at PC483: Confused about usage of register: R31 in 'UnsetPending'

                        TrackPidAndTechniqueBM(l_0_54.ppid, "T1485", "susp_ransomware_childproc_type2")
                      end
                    end
                    ;
                    (bm.add_related_string)("ransom_files_main", l_0_65, bm.RelatedStringBMReport)
                    local l_0_77 = nil
                    do
                      local l_0_78 = nil
                      if l_0_78 > 5 then
                        (bm.trigger_sig)("GenericRansomware", "Type2:Count_" .. math_floor((MpCommon.RollingQueueCount)(l_0_36) / 5))
                      end
                      sms_untrusted_process()
                      ;
                      (bm.add_action)("SmsAsyncScanEvent", 100)
                      TrackPidAndTechniqueBM(l_0_35, "T1486", "susp_ransomware_type4")
                      if math_floor((MpCommon.RollingQueueCount)(l_0_36) / 5) < 5 then
                        return mp.CLEAN
                      end
                      reportTimingData()
                      do return mp.INFECTED end
                      do
                        local l_0_79 = {}
                        -- DECOMPILER ERROR at PC537: No list found for R16 , SetList fails

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC539: LeaveBlock: unexpected jumping out IF_STMT

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
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

