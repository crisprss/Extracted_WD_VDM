-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1724.luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = "^(.+)//"
  local l_1_2 = "^(.+)\\"
  do
    if not (string.match)(l_1_0, l_1_1) then
      local l_1_3 = (string.match)(l_1_0, l_1_2)
    end
    -- DECOMPILER ERROR at PC14: Confused about usage of register: R3 in 'UnsetPending'

    -- DECOMPILER ERROR at PC16: Confused about usage of register: R3 in 'UnsetPending'

    if l_1_3 ~= nil then
      return l_1_3
    else
      return nil
    end
  end
end

local l_0_1 = mp.SIGATTR_LOG_SZ
local l_0_2 = {}
local l_0_3 = {}
local l_0_4 = "%.[^%.%\\][%w_]+$"
for l_0_8 = 1, l_0_1 do
  local l_0_9 = 0
  if (sigattr_tail[l_0_8]).attribute == 16385 then
    local l_0_10 = ((sigattr_tail[l_0_8]).utf8p1):lower()
    if l_0_10:byte(1) == 37 then
      l_0_9 = 1
    end
    if l_0_9 == 0 then
      l_0_2[(mp.crc32)(0, l_0_10, 1, #l_0_10)] = 1
    end
  end
end
for l_0_14 = 1, l_0_1 do
  local l_0_15 = (sigattr_tail[l_0_14]).attribute
  local l_0_16 = 0
  if l_0_15 == 16389 and (sigattr_tail[l_0_14]).utf8p2 == "ATTR_c09458eb" then
    local l_0_17 = ((sigattr_tail[l_0_14]).utf8p1):lower()
    if l_0_17:byte(1) == 37 then
      l_0_16 = 1
    end
    if l_0_16 == 0 then
      local l_0_18 = (mp.crc32)(0, l_0_17, 1, #l_0_17)
      if l_0_2[l_0_18] ~= nil then
        l_0_3[l_0_18] = 1
      end
    end
  end
end
local l_0_19 = {}
for l_0_23 = 1, l_0_1 do
  if (sigattr_tail[l_0_23]).attribute == 16386 then
    local l_0_24 = ((sigattr_tail[l_0_23]).utf8p2):lower()
    local l_0_25 = ((sigattr_tail[l_0_23]).utf8p1):lower()
    local l_0_26 = l_0_24:match(l_0_4)
    local l_0_27 = l_0_25:match(l_0_4)
    if l_0_26 ~= nil and l_0_27 ~= nil then
      local l_0_28 = (mp.crc32)(0, l_0_25, 1, #l_0_25)
      if (mp.GetExtensionClass)(l_0_26) ~= 4 and (mp.GetExtensionClass)(l_0_27) == 0 and l_0_3[l_0_28] ~= nil then
        local l_0_29 = l_0_0(l_0_24)
        local l_0_30 = (mp.crc32)(0, l_0_29, 1, #l_0_29)
        do
          do
            if l_0_19[l_0_27] == nil then
              local l_0_31 = {}
              l_0_31.dirCount = 0
              l_0_31.fileCount = 0
              l_0_19[l_0_27] = l_0_31
            end
            -- DECOMPILER ERROR at PC155: Confused about usage of register: R17 in 'UnsetPending'

            if (l_0_19[l_0_27])[l_0_30] == nil then
              (l_0_19[l_0_27]).dirCount = (l_0_19[l_0_27]).dirCount + 1
              -- DECOMPILER ERROR at PC158: Confused about usage of register: R17 in 'UnsetPending'

              ;
              (l_0_19[l_0_27])[l_0_30] = {}
            end
            -- DECOMPILER ERROR at PC168: Confused about usage of register: R17 in 'UnsetPending'

            if ((l_0_19[l_0_27])[l_0_30])[l_0_28] == nil then
              (l_0_19[l_0_27]).fileCount = (l_0_19[l_0_27]).fileCount + 1
              -- DECOMPILER ERROR at PC171: Confused about usage of register: R17 in 'UnsetPending'

              ;
              ((l_0_19[l_0_27])[l_0_30])[l_0_28] = l_0_23
            end
            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC172: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
end
for l_0_35,l_0_36 in pairs(l_0_19) do
  if (l_0_36.dirCount >= 3 and l_0_36.fileCount >= 6) or l_0_36.fileCount > 15 then
    (bm.add_related_string)("ransom_extension", l_0_35, bm.RelatedStringBMReport)
    local l_0_37 = {}
    local l_0_38 = ((bm.get_imagepath)()):lower()
    -- DECOMPILER ERROR at PC206: Overwrote pending register: R13 in 'AssignReg'

    if (bm.get_current_process_startup_info)() ~= nil then
      do
        local l_0_39, l_0_50, l_0_51 = ((bm.get_current_process_startup_info)()).ppid
        for l_0_43,l_0_44 in pairs(l_0_36) do
          local l_0_40 = nil
          -- DECOMPILER ERROR at PC212: Confused about usage of register: R18 in 'UnsetPending'

          -- DECOMPILER ERROR at PC217: Confused about usage of register: R18 in 'UnsetPending'

          if type((l_0_19[l_0_27]).fileCount + 1) == "table" then
            for l_0_48,l_0_49 in pairs((l_0_19[l_0_27]).fileCount + 1) do
              -- DECOMPILER ERROR at PC223: Confused about usage of register: R23 in 'UnsetPending'

              (bm.add_related_file)((sigattr_tail[R23_PC223]).utf8p1)
            end
          end
        end
        l_0_37.current_image_path = l_0_38
        l_0_37.extension = l_0_35
        l_0_37.ext_data = json_encode(l_0_19)
        do
          local l_0_52, l_0_53 = , (bm.get_process_relationships)()
          for l_0_57,l_0_58 in ipairs(l_0_53) do
            local l_0_54 = nil
            if l_0_47.image_path ~= nil then
              (bm.add_related_process)(l_0_47.ppid)
            end
          end
          -- DECOMPILER ERROR at PC253: Confused about usage of register: R15 in 'UnsetPending'

          for l_0_62,l_0_63 in ipairs(l_0_54) do
            local l_0_59 = nil
            if l_0_47.image_path ~= nil then
              (bm.add_related_process)(l_0_47.ppid)
            end
          end
          ;
          (MpCommon.OverwritePersistContextNoPath)("gene_ransom_meta", l_0_37, 700)
          ;
          (bm.add_related_string)("GenericRansomware", json_encode(l_0_37), bm.RelatedStringBMReport)
          ;
          (bm.trigger_sig)("GenericRansomware", "Type2.4")
          ;
          (bm.add_action)("SmsAsyncScanEvent", 100)
          reportSessionInformation()
          reportTimingData()
          do return mp.INFECTED end
          -- DECOMPILER ERROR at PC297: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC297: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC297: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC297: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC297: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

