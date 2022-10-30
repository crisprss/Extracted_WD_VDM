-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1444.luac 

-- params : ...
-- function num : 0
local l_0_1 = nil
local l_0_2 = nil
if (MpCommon.RollingQueueCount)("genb_ransom_meta_" .. (((bm.get_current_process_startup_info)()).ppid or -1)) ~= nil and (MpCommon.RollingQueueCount)("genb_ransom_meta_" .. (((bm.get_current_process_startup_info)()).ppid or -1)) >= 25 and (MpCommon.RollingQueueCount)("genb_ransom_meta_" .. (((bm.get_current_process_startup_info)()).ppid or -1)) <= 100 then
  local l_0_3 = nil
  if GetRollingQueue(l_0_2) == nil or type(GetRollingQueue(l_0_2)) ~= "table" then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = {}
  local l_0_6 = nil
  local l_0_7 = ""
  local l_0_8 = ""
  local l_0_9 = {}
  local l_0_10 = 0
  local l_0_11 = {}
  local l_0_12 = 0
  local l_0_13 = 0
  local l_0_14 = {}
  local l_0_15 = 0
  local l_0_16 = 0
  local l_0_17 = ""
  for l_0_21,l_0_22 in ipairs(l_0_4) do
    local l_0_18 = false
    -- DECOMPILER ERROR at PC52: Confused about usage of register: R22 in 'UnsetPending'

    l_0_6 = explode(R22_PC52.value, "|")
    local l_0_24 = table.insert
    local l_0_25 = l_0_5
    l_0_24(l_0_25, {Extension = l_0_6[1], NewFileName = l_0_6[2], OldFileName = l_0_6[3], FileType = l_0_6[4], FileSize = l_0_6[5], MagicByte = l_0_6[6], Entropy = l_0_6[7]})
    l_0_24 = l_0_6[1]
    l_0_24 = l_0_11[l_0_24]
    if l_0_24 ~= 1 then
      l_0_12 = l_0_12 + 1
      l_0_24 = l_0_6[1]
      l_0_11[l_0_24] = 1
    end
    l_0_24 = string
    l_0_24 = l_0_24.match
    l_0_25 = l_0_6[2]
    l_0_24 = l_0_24(l_0_25, "(.*[/\\])")
    l_0_7 = l_0_24
    l_0_24 = mp
    l_0_24 = l_0_24.crc32
    l_0_25 = 0
    l_0_24 = l_0_24(l_0_25, l_0_7, 1, #l_0_7)
    l_0_8 = l_0_24
    l_0_24 = l_0_9[l_0_8]
    if l_0_24 ~= 1 then
      l_0_10 = l_0_10 + 1
      l_0_9[l_0_8] = 1
    end
    l_0_24 = string
    l_0_24 = l_0_24.match
    l_0_25 = l_0_6[3]
    l_0_24 = l_0_24(l_0_25, "(.*[/\\])")
    l_0_17 = l_0_24
    if l_0_17 ~= l_0_7 and l_0_18 == false then
      l_0_18 = true
    end
    l_0_24 = l_0_6[4]
    if l_0_24 == "Unknown" then
      l_0_13 = l_0_13 + 1
    end
    l_0_24 = l_0_6[6]
    l_0_24 = l_0_14[l_0_24]
    if l_0_24 ~= 1 then
      l_0_15 = l_0_15 + 1
      l_0_24 = l_0_6[6]
      l_0_14[l_0_24] = 1
    end
    l_0_24 = l_0_6[7]
    if l_0_24 >= 7 then
      l_0_16 = l_0_16 + 1
    end
  end
  ;
  (bm.add_related_string)("GenBRollingQueueData", json_encode(l_0_5), bm.RelatedStringBMReport)
  -- DECOMPILER ERROR at PC145: Confused about usage of register: R17 in 'UnsetPending'

  do
    do
      do
        if ((((l_0_12 ~= 1 or l_0_10 > 3) and l_0_18 ~= false) or l_0_13 == l_0_3) and l_0_15 ~= 1) or l_0_16 == l_0_3 then
          local l_0_26, l_0_27 = , 0 + 1 + 1 + 1 + 1 + 1 + 1
        end
        -- DECOMPILER ERROR at PC157: Confused about usage of register: R18 in 'UnsetPending'

        if l_0_27 >= 4 then
          reportSessionInformation()
          sms_untrusted_process()
          return mp.INFECTED
        end
        do return mp.CLEAN end
        -- DECOMPILER ERROR at PC169: freeLocal<0 in 'ReleaseLocals'

      end
    end
  end
end

