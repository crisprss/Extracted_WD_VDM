-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22199.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = {}
local l_0_4 = {}
local l_0_5 = {}
local l_0_6 = {}
local l_0_7 = 0
for l_0_11 = 1, l_0_0 do
  local l_0_12 = (sigattr_tail[l_0_11]).attribute
  if l_0_12 == 16384 then
    local l_0_13 = ((sigattr_tail[l_0_11]).utf8p1):lower()
    local l_0_14 = l_0_13:match("%.[^%.]+$")
    if l_0_14 ~= nil and (mp.GetExtensionClass)(l_0_14) ~= 4 then
      local l_0_15 = (mp.crc32)(0, l_0_13, 1, #l_0_13)
      if l_0_1[l_0_15] ~= nil then
        (table.insert)(l_0_1[l_0_15], l_0_11)
      else
        local l_0_16 = {}
        -- DECOMPILER ERROR at PC52: No list found for R16 , SetList fails

      end
    end
  end
end
if l_0_7 < 5 then
  return mp.CLEAN
end
for l_0_20 = 1, l_0_0 do
  local l_0_21 = (sigattr_tail[l_0_20]).attribute
  if l_0_21 == 16389 and (sigattr_tail[l_0_20]).utf8p2 == "ATTR_c09458eb" then
    local l_0_22 = ((sigattr_tail[l_0_20]).utf8p1):lower()
    -- DECOMPILER ERROR at PC84: Overwrote pending register: R17 in 'AssignReg'

    local l_0_23 = (mp.crc32)(0, l_0_22, l_0_11, #l_0_22)
    if l_0_3[l_0_23] ~= nil then
      (table.insert)(l_0_3[l_0_23], l_0_20)
    else
      local l_0_24 = {}
      -- DECOMPILER ERROR at PC98: No list found for R15 , SetList fails

    end
    do
      -- DECOMPILER ERROR at PC105: Overwrote pending register: R16 in 'AssignReg'

      do
        if not (string.find)(l_0_20, "\\[^\\]*$") then
          local l_0_25, l_0_26, l_0_27 = l_0_1[l_0_23] == nil or 0
        end
        -- DECOMPILER ERROR at PC115: Confused about usage of register: R15 in 'UnsetPending'

        local l_0_28 = nil
        if (string.find)(l_0_22, ".", l_0_25, true) ~= nil then
          local l_0_29 = nil
          if (string.sub)(l_0_22, l_0_28 + 1, (string.find)(l_0_22, ".", l_0_25, true) - 1) ~= nil then
            if l_0_4[(string.sub)(l_0_22, l_0_28 + 1, (string.find)(l_0_22, ".", l_0_25, true) - 1)] == nil then
              local l_0_30 = nil
              l_0_4[l_0_30] = {l_0_23, l_0_20}
            else
              do
                do
                  -- DECOMPILER ERROR at PC139: Confused about usage of register: R17 in 'UnsetPending'

                  ;
                  (table.insert)(l_0_4[l_0_30], l_0_20)
                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_ELSE_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out DO_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_THEN_STMT

                  -- DECOMPILER ERROR at PC142: LeaveBlock: unexpected jumping out IF_STMT

                end
              end
            end
          end
        end
      end
    end
  end
end
-- DECOMPILER ERROR at PC143: Overwrote pending register: R7 in 'AssignReg'

local l_0_31 = {}
for l_0_35 = 1, l_0_0 do
  local l_0_36 = (sigattr_tail[l_0_35]).attribute
  if l_0_36 == 16387 then
    local l_0_37 = ((sigattr_tail[l_0_35]).utf8p1):lower()
    local l_0_38 = (mp.crc32)(0, l_0_37, 1, #l_0_37)
    if l_0_1[l_0_38] == nil then
      (table.insert)(l_0_2, l_0_35)
    else
      l_0_3[l_0_38] = nil
    end
    -- DECOMPILER ERROR at PC179: Overwrote pending register: R7 in 'AssignReg'

    if l_0_31[l_0_38] == nil then
      l_0_31[l_0_38] = 1
    end
  end
end
if l_0_7 < 5 then
  return mp.CLEAN
end
for l_0_42,l_0_43 in pairs(l_0_2) do
  local l_0_44 = ((sigattr_tail[l_0_43]).utf8p1):lower()
  do
    local l_0_45, l_0_46, l_0_47, l_0_48 = (string.find)(l_0_44, "\\[^\\]*$") or 0
    -- DECOMPILER ERROR at PC208: Confused about usage of register: R15 in 'UnsetPending'

    local l_0_49 = nil
    if (string.find)(l_0_44, ".", l_0_45, true) ~= nil then
      local l_0_50 = nil
      local l_0_51 = (string.sub)(l_0_44, l_0_49 + 1, -1)
      local l_0_52 = (string.sub)(l_0_44, l_0_49 + 1, l_0_50 - 1)
      if l_0_52 ~= nil and (mp.bitand)((mp.GetExtensionClass)(l_0_51:match("%.[^%.]+$")), 3) ~= 0 and l_0_4[l_0_52] ~= nil then
        local l_0_53 = nil
        -- DECOMPILER ERROR at PC249: Confused about usage of register: R20 in 'UnsetPending'

        if l_0_3[(l_0_4[l_0_52])[1]] ~= nil then
          local l_0_54 = nil
          if #l_0_44 < #((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower() and (((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower()):find(l_0_44, 1, true) == 1 and (((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower()):byte(#l_0_44 + 1) ~= 58 then
            local l_0_55 = nil
            -- DECOMPILER ERROR at PC284: Unhandled construct in 'MakeBoolean' P1

            if l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower(), #l_0_44 + 1)] ~= nil and l_0_6[l_0_54] == nil then
              l_0_6[l_0_54] = 1
              ;
              (table.insert)(l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower(), #l_0_44 + 1)], (l_0_3[l_0_54])[1])
              ;
              (table.insert)(l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower(), #l_0_44 + 1)], l_0_43)
              if #l_0_5[(string.sub)(((sigattr_tail[(l_0_3[(l_0_4[l_0_52])[1]])[1]]).utf8p1):lower(), #l_0_44 + 1)] >= 10 then
                local l_0_56 = nil
                for l_0_60,l_0_61 in pairs(l_0_5[l_0_56]) do
                  local l_0_57 = {count = 0}
                  -- DECOMPILER ERROR at PC309: Confused about usage of register: R28 in 'UnsetPending'

                  if (sysio.ReadFile)((sigattr_tail[R28_PC309]).utf8p1, 0, 4) ~= nil and l_0_57[(sysio.ReadFile)((sigattr_tail[R28_PC309]).utf8p1, 0, 4)] == nil then
                    l_0_57[(sysio.ReadFile)((sigattr_tail[R28_PC309]).utf8p1, 0, 4)] = 1
                    l_0_57.count = l_0_57.count + 1
                  end
                end
                -- DECOMPILER ERROR at PC325: Confused about usage of register: R23 in 'UnsetPending'

                if l_0_57.count > 4 then
                  (bm.add_related_string)("magic_mismatch", "true", bm.RelatedStringBMReport)
                else
                  ;
                  (bm.add_related_string)("magic_mismatch", "false", bm.RelatedStringBMReport)
                end
                ;
                (bm.add_related_string)("ransom_extension", l_0_56, bm.RelatedStringBMReport)
                local l_0_63 = nil
                local l_0_64 = {}
                -- DECOMPILER ERROR at PC363: Overwrote pending register: R26 in 'AssignReg'

                if (bm.get_current_process_startup_info)() ~= nil then
                  do
                    local l_0_65, l_0_66, l_0_67, l_0_68, l_0_69 = ((bm.get_imagepath)()):lower(), ((bm.get_current_process_startup_info)()).ppid
                    -- DECOMPILER ERROR at PC367: Confused about usage of register: R25 in 'UnsetPending'

                    ;
                    (table.insert)(l_0_64, l_0_65)
                    -- DECOMPILER ERROR at PC372: Confused about usage of register: R26 in 'UnsetPending'

                    ;
                    (table.insert)(l_0_64, l_0_66)
                    ;
                    (table.insert)(l_0_64, l_0_56)
                    local l_0_70 = nil
                    for l_0_74,l_0_75 in pairs(l_0_5[l_0_56]) do
                      local l_0_71, l_0_72 = , "FileChain_MainSet:"
                      -- DECOMPILER ERROR at PC385: Confused about usage of register: R32 in 'UnsetPending'

                      do
                        local l_0_78, l_0_79 = , (string.find)((sigattr_tail[4]).utf8p1, "\\[^\\]*$") or 0
                        -- DECOMPILER ERROR at PC397: Confused about usage of register: R33 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC399: Confused about usage of register: R34 in 'UnsetPending'

                        local l_0_80 = nil
                        -- DECOMPILER ERROR at PC406: Confused about usage of register: R33 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC407: Confused about usage of register: R34 in 'UnsetPending'

                        do
                          do
                            if (string.find)(l_0_78, ".", l_0_79, true) ~= nil then
                              local l_0_81 = nil
                              l_0_72 = l_0_72 .. (crypto.CRC32Buffer)(-1, (string.sub)(l_0_78, l_0_79 + 1, (string.find)(l_0_78, ".", l_0_79, true) - 1), 0, #(string.sub)(l_0_78, l_0_79 + 1, (string.find)(l_0_78, ".", l_0_79, true) - 1))
                              l_0_72 = l_0_72 .. ";" .. (string.sub)(l_0_81, (string.find)(l_0_78, ".", l_0_79, true) + 1) .. ";"
                            end
                            ;
                            (bm.add_related_file)((sigattr_tail[l_0_80]).utf8p1)
                            ;
                            (table.insert)(l_0_64, (sigattr_tail[l_0_80]).utf8p1)
                            -- DECOMPILER ERROR at PC441: LeaveBlock: unexpected jumping out DO_STMT

                            -- DECOMPILER ERROR at PC441: LeaveBlock: unexpected jumping out DO_STMT

                          end
                        end
                      end
                    end
                    do
                      local l_0_82, l_0_83 = nil
                      for l_0_87,l_0_88 in ipairs((bm.get_process_relationships)()) do
                        local l_0_84, l_0_85 = nil
                        -- DECOMPILER ERROR at PC450: Confused about usage of register: R34 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC455: Confused about usage of register: R34 in 'UnsetPending'

                        if l_0_79.image_path ~= nil then
                          (bm.add_related_process)(l_0_79.ppid)
                        end
                      end
                      -- DECOMPILER ERROR at PC460: Confused about usage of register: R29 in 'UnsetPending'

                      for l_0_92,l_0_93 in ipairs(l_0_85) do
                        local l_0_89, l_0_90 = nil
                        -- DECOMPILER ERROR at PC463: Confused about usage of register: R34 in 'UnsetPending'

                        -- DECOMPILER ERROR at PC468: Confused about usage of register: R34 in 'UnsetPending'

                        if l_0_79.image_path ~= nil then
                          (bm.add_related_process)(l_0_79.ppid)
                          -- DECOMPILER ERROR at PC471: Confused about usage of register: R34 in 'UnsetPending'

                          TrackPidAndTechniqueBM(l_0_79.ppid, "T1485", "susp_ransomware_childproc_type4")
                        end
                      end
                      ;
                      (bm.add_related_string)("ransom_files_main", l_0_83, bm.RelatedStringBMReport)
                      ;
                      (MpCommon.OverwritePersistContextNoPath)("gend_ransom_meta", l_0_64, 700)
                      ;
                      (bm.trigger_sig)("GenericRansomware", "Type4")
                      sms_untrusted_process()
                      ;
                      (bm.add_action)("SmsAsyncScanEvent", 100)
                      TrackPidAndTechniqueBM(l_0_82, "T1486", "susp_ransomware_type4")
                      reportTimingData()
                      do return mp.INFECTED end
                      do
                        local l_0_94 = nil
                        l_0_5[l_0_94] = {(l_0_3[l_0_54])[1], l_0_43}
                        l_0_6[l_0_54] = 1
                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC520: LeaveBlock: unexpected jumping out DO_STMT

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
return mp.CLEAN

