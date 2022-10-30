-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3545.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.OriginalFilename)
  local l_0_2 = (string.lower)(l_0_0.InternalName)
  if l_0_1 ~= nil and l_0_1 ~= "" then
    (mp.set_mpattribute)("MpInternal_researchdata=OFN=" .. l_0_1)
    local l_0_4 = (MpCommon.StringRegExpSearch)("(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)", l_0_1)
    if l_0_4 == true then
      return mp.CLEAN
    end
  else
    do
      if l_0_2 ~= nil and l_0_2 ~= "" then
        local l_0_3 = mp.set_mpattribute
        local l_0_5 = "MpInternal_researchdata=InternalName=" .. l_0_2
        l_0_3(l_0_5)
        l_0_3 = MpCommon
        l_0_3 = l_0_3.StringRegExpSearch
        l_0_5 = "(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)"
        l_0_3 = l_0_3(l_0_5, l_0_2)
        if l_0_3 == true then
          return mp.CLEAN
        end
      end
      do
        local l_0_6 = ""
        if (mp.get_mpattribute)("HSTR:ProcessHacker") then
          l_0_6 = "ProcessHacker"
        else
          if (mp.get_mpattribute)("HSTR:ProcessExplorer") then
            l_0_6 = "ProcessExplorer"
          end
        end
        local l_0_7 = function()
  -- function num : 0_0
  for l_1_3 = 1, pehdr.NumberOfSections do
    if tostring((pesecs[l_1_3]).Name) == ".rsrc" then
      return (pesecs[l_1_3]).PointerToRawData, (pesecs[l_1_3]).VirtualAddress
    end
  end
end

        local l_0_8 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (mp.readfile)(l_2_0, 20)
  local l_2_2 = (mp.readu_u16)(l_2_1, 15)
  local l_2_3 = l_2_0 + 16
  return l_2_2, l_2_3
end

        local l_0_9 = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = (mp.readfile)(l_3_0, 8)
  local l_3_2 = (mp.readu_u32)(l_3_1, 1)
  local l_3_3 = (mp.readu_u32)(l_3_1, 5)
  local l_3_4 = (mp.bitand)(l_3_2, 2147483647)
  local l_3_5 = (mp.bitand)(l_3_2, 4294901760)
  local l_3_6 = (mp.bitand)(l_3_2, 65535)
  local l_3_7 = (mp.shr32)((mp.bitand)(l_3_3, 2147483648), 31)
  local l_3_8 = (mp.bitand)(l_3_3, 2147483647)
  return l_3_2, l_3_3, l_3_4, l_3_5, l_3_6, l_3_7, l_3_8
end

        local l_0_10 = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = (mp.readfile)(l_4_0, 20)
  local l_4_2 = (mp.readu_u32)(l_4_1, 1)
  local l_4_3 = (mp.readu_u32)(l_4_1, 5)
  local l_4_4 = (mp.readu_u32)(l_4_1, 9)
  local l_4_5 = (mp.readu_u32)(l_4_1, 13)
  return l_4_2, l_4_3, l_4_4, l_4_5
end

        ;
        (mp.readprotection)(false)
        local l_0_11, l_0_12 = l_0_7()
        local l_0_13, l_0_14 = l_0_8(l_0_11)
        for l_0_18 = 0, l_0_13 do
          local l_0_19 = l_0_14 + l_0_18 * 8
          local l_0_20, l_0_21, l_0_22, l_0_23, l_0_24, l_0_25, l_0_26 = l_0_9(l_0_19)
          local l_0_27 = l_0_11 + l_0_26
          local l_0_28, l_0_29 = l_0_8(l_0_27)
          for l_0_33 = 0, l_0_28 do
            local l_0_34 = l_0_29 + l_0_33 * 8
            local l_0_35, l_0_36, l_0_37, l_0_38, l_0_39, l_0_40, l_0_41 = l_0_9(l_0_34)
            local l_0_42 = l_0_11 + l_0_41
            local l_0_43, l_0_44 = l_0_8(l_0_42)
            for l_0_48 = 0, l_0_43 do
              local l_0_49 = l_0_44 + l_0_48 * 8
              local l_0_50, l_0_51, l_0_52, l_0_53, l_0_54, l_0_55, l_0_56 = l_0_9(l_0_49)
              local l_0_57 = l_0_11 + l_0_56
              local l_0_58, l_0_59 = l_0_10(l_0_57)
              if l_0_12 < l_0_58 then
                local l_0_60 = l_0_58 - l_0_12 + l_0_11
                local l_0_61 = (mp.readfile)(l_0_60, 2)
                if l_0_61 == "MZ" then
                  (mp.set_mpattribute)("MpInternal_researchdata=Driver=" .. l_0_6)
                  return mp.INFECTED
                end
              end
            end
          end
        end
        return mp.CLEAN
      end
    end
  end
end

