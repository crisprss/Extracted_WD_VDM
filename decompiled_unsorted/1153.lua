-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1153.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
local l_0_1 = GetRollingQueueKeyValue("SPVersion", l_0_0)
if l_0_1 == nil then
  local l_0_2 = "SPVersion"
  local l_0_3, l_0_4 = nil, nil
  local l_0_5 = 86400
  local l_0_6 = {}
  -- DECOMPILER ERROR at PC19: No list found for R6 , SetList fails

  -- DECOMPILER ERROR at PC20: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R8 in 'AssignReg'

  for l_0_10,l_0_11 in ("14.0")("15.0") do
    if (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\" .. l_0_11 .. "\\WSS") then
      l_0_4 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\" .. l_0_11)
      l_0_3 = l_0_11
    end
  end
  do
    if not (sysio.GetRegValueAsString)(l_0_4, "Version") then
      local l_0_12, l_0_13 = not l_0_4 or "nil"
    end
    -- DECOMPILER ERROR at PC53: Confused about usage of register: R7 in 'UnsetPending'

    -- DECOMPILER ERROR at PC55: Confused about usage of register: R7 in 'UnsetPending'

    if l_0_12 then
      local l_0_14 = nil
      if l_0_12:match("%.([^%.]+)$") then
        local l_0_15 = nil
        local l_0_16 = nil
        for l_0_20,l_0_21 in pairs((sysio.RegEnumValues)((sysio.RegOpenKey)("HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\" .. l_0_3 .. "\\InstalledLanguages"))) do
          local l_0_17 = nil
          -- DECOMPILER ERROR at PC80: Confused about usage of register: R15 in 'UnsetPending'

          if (string.lower)((sysio.GetRegValueAsString)(l_0_16, l_0_11)) and (string.find)((string.lower)((sysio.GetRegValueAsString)(l_0_16, l_0_11)), l_0_15, 1, true) then
            AppendToRollingQueue(l_0_2, l_0_0, (string.lower)((sysio.GetRegValueAsString)(l_0_16, l_0_11)), l_0_5)
            ;
            (bm.add_related_string)("SPFullVersion", (string.lower)((sysio.GetRegValueAsString)(l_0_16, l_0_11)), bm.RelatedStringBMReport)
          end
        end
      end
      do
        do
          l_0_16 = AppendToRollingQueue
          l_0_16(l_0_2, l_0_0, l_0_14, l_0_5)
          l_0_16 = bm
          l_0_16 = l_0_16.add_related_string
          l_0_16("SPVersion", l_0_14, bm.RelatedStringBMReport)
          l_0_2 = bm
          l_0_2 = l_0_2.add_related_string
          l_0_3 = "SPVersion"
          l_0_2(l_0_3, l_0_1, bm.RelatedStringBMReport)
          l_0_2 = mp
          l_0_2 = l_0_2.INFECTED
          return l_0_2
        end
      end
    end
  end
end

