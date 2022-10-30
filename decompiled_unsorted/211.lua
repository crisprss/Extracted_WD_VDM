-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/211.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
if l_0_0 > 60 then
  local l_0_1 = {}
  local l_0_2 = ""
  local l_0_3 = ""
  local l_0_4 = 0
  for l_0_8 = 1, l_0_0 do
    if (sigattr_tail[l_0_8]).attribute == 16384 then
      l_0_2 = (sigattr_tail[l_0_8]).utf8p1
      l_0_3 = (mp.crc32)(0, l_0_2, 1, #l_0_2)
      l_0_1[l_0_3] = 1
      l_0_4 = l_0_4 + 1
    end
  end
  if l_0_4 > 20 then
    local l_0_9 = ""
    local l_0_10 = ""
    local l_0_11 = ""
    local l_0_12 = ""
    local l_0_13 = ""
    local l_0_14 = {}
    local l_0_15 = ""
    local l_0_16 = 0
    local l_0_17 = 0
    local l_0_18 = ""
    local l_0_19 = 0
    local l_0_20 = 0
    local l_0_21 = 0
    local l_0_22 = {}
    local l_0_24 = nil
    local l_0_25 = "genc_ransom_meta_" .. (((bm.get_current_process_startup_info)()).ppid or -1)
    local l_0_26 = "CreateFile"
    local l_0_27 = ""
    local l_0_28 = 1800
    for l_0_32 = 1, l_0_0 do
      local l_0_29 = 100
      -- DECOMPILER ERROR at PC66: Confused about usage of register: R28 in 'UnsetPending'

      if (sigattr_tail[R28_PC66]).attribute == 16389 and (sigattr_tail[R28_PC66]).utf8p2 == "ATTR_c09458eb" and (sigattr_tail[R28_PC66]).utf8p1 ~= nil then
        l_0_9 = (sigattr_tail[R28_PC66]).utf8p1
        l_0_10 = (mp.crc32)(0, l_0_9, 1, #l_0_9)
        if l_0_1[l_0_10] == 1 then
          l_0_11 = (string.match)(l_0_9, "[^\\]+$")
          l_0_12 = (string.match)(l_0_9, "(.*[/\\])")
          _ = (string.gsub)(l_0_11, "%.", "")
          if l_0_16 > 1 then
            l_0_15 = (string.match)(l_0_11, "%.[^%.]+$")
            if (mp.GetExtensionClass)(l_0_15) ~= 4 and #l_0_15 > 4 then
              l_0_17 = (sysio.GetFileSize)(l_0_9)
              if l_0_17 ~= nil and l_0_17 > 256 and (sysio.ReadFile)(l_0_9, 0, 256) ~= nil then
                l_0_18 = (string.format)("\\x%02X\\x%02X\\x%02X\\x%02X", (string.byte)((sysio.ReadFile)(l_0_9, 0, 256), 1, 4))
                l_0_19 = (crypto.ComputeEntropy)((sysio.ReadFile)(l_0_9, 0, 256))
                if l_0_19 >= 7 then
                  l_0_13 = (mp.crc32)(0, l_0_12, 1, #l_0_12)
                  if l_0_14[l_0_13] ~= 1 then
                    l_0_21 = l_0_21 + 1
                    l_0_14[l_0_13] = 1
                  end
                  local l_0_34 = nil
                  local l_0_35 = table.insert
                  local l_0_36 = l_0_22
                  l_0_35(l_0_36, {FileName = l_0_11, FolderPath = l_0_12, FileSize = l_0_17, Magic = l_0_18, Entropy100 = l_0_19})
                  l_0_20 = l_0_20 + 1
                  l_0_35 = l_0_9
                  l_0_36 = "|"
                  l_0_27 = l_0_35 .. l_0_36 .. l_0_12 .. "|" .. l_0_11 .. "|" .. l_0_16 .. "|" .. l_0_15 .. "|" .. l_0_17 .. "|" .. l_0_18 .. "|" .. l_0_19 .. "|"
                  l_0_35 = AppendToRollingQueue
                  l_0_36 = l_0_25
                  l_0_35(l_0_36, l_0_26, l_0_27, l_0_28, l_0_29, 0)
                  if l_0_20 > 20 and l_0_21 > 3 then
                    l_0_35 = bm
                    l_0_35 = l_0_35.add_related_string
                    l_0_36 = "GenCRansom_encryptedData"
                    l_0_35(l_0_36, json_encode(l_0_22), bm.RelatedStringBMReport)
                    l_0_35 = reportTimingData
                    l_0_35()
                    l_0_35 = mp
                    l_0_35 = l_0_35.INFECTED
                    return l_0_35
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
do
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC237: freeLocal<0 in 'ReleaseLocals'

end

