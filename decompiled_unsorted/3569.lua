-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3569.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if peattributes.no_security == true then
  return mp.CLEAN
end
local l_0_1 = function()
  -- function num : 0_0
  for l_1_3 = 1, pehdr.NumberOfSections do
    if tostring((pesecs[l_1_3]).Name) == ".rsrc" then
      return (pesecs[l_1_3]).PointerToRawData, (pesecs[l_1_3]).VirtualAddress
    end
  end
end

local l_0_2 = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (mp.readfile)(l_2_0, 20)
  local l_2_2 = (mp.readu_u16)(l_2_1, 15)
  local l_2_3 = (mp.readu_u16)(l_2_1, 13)
  local l_2_4 = l_2_0 + 16
  return l_2_2, l_2_3, l_2_4
end

local l_0_3 = function(l_3_0)
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

local l_0_4 = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = (mp.readfile)(l_4_0, 20)
  local l_4_2 = (mp.readu_u32)(l_4_1, 1)
  local l_4_3 = (mp.readu_u32)(l_4_1, 5)
  local l_4_4 = (mp.readu_u32)(l_4_1, 9)
  local l_4_5 = (mp.readu_u32)(l_4_1, 13)
  return l_4_2, l_4_3, l_4_4, l_4_5
end

local l_0_5 = {}
l_0_5.E17764C39F2AFD7114F8528D2F9783D9A591F6679715EECE730A262CF5CFD3B3 = "62009aaabdae749fd47d19150958329bf6ff4b34"
l_0_5["84D8717A416C8C9E214C6E0DBD091860D8133F413BCFF35673998F27BBA084CA"] = "b9eaa034c821c159b05d3521bcf7feb796ebd6ff"
l_0_5.A08E79C386083D875014C409C13D144E0A24386132980DF11FF59737C8489EB1 = "007790f6561dad89b0bcd85585762495e358f8a5"
l_0_5["4843A82ED3B1F2BFBEE9671960E1940C942F688D"] = "495847a93187cfb8c71f840cb7b41497ad95c64f"
l_0_5["47F4B9898631773231B32844EC0D49990AC4EB1E"] = "409AA4A74A0CDA7C0FEE6BD0BB8823D16B5F1875"
;
(mp.readprotection)(false)
local l_0_6, l_0_7 = l_0_1()
local l_0_8, l_0_9, l_0_10 = l_0_2(l_0_6)
if l_0_9 == 0 then
  return mp.CLEAN
end
for l_0_14 = 0, l_0_9 do
  local l_0_15 = l_0_10 + l_0_14 * 8
  local l_0_16, l_0_17, l_0_18, l_0_19, l_0_20, l_0_21, l_0_22 = l_0_3(l_0_15)
  local l_0_23 = (mp.readfile)(l_0_6 + l_0_18, 40)
  l_0_23 = (string.gsub)(l_0_23, "%z", "")
  if (string.find)(l_0_23, "MSELAMCERTINFOID", 1, true) then
    (mp.set_mpattribute)("Lua:ELAMDriver")
    local l_0_24 = l_0_6 + l_0_22
    local l_0_25, l_0_26, l_0_27 = l_0_2(l_0_24)
    if l_0_26 == 0 then
      return mp.CLEAN
    end
    for l_0_31 = 0, l_0_26 do
      local l_0_32 = l_0_27 + l_0_31 * 8
      local l_0_33, l_0_34, l_0_35, l_0_36, l_0_37, l_0_38, l_0_39 = l_0_3(l_0_32)
      local l_0_40 = (mp.readfile)(l_0_6 + l_0_35, 70)
      l_0_40 = (string.gsub)(l_0_40, "%z", "")
      if (string.find)(l_0_40, "MICROSOFTELAMCERTIFICATEINFO", 1, true) then
        local l_0_41 = l_0_6 + l_0_39
        local l_0_42, l_0_43, l_0_44 = l_0_2(l_0_41)
        for l_0_48 = 0, l_0_42 do
          local l_0_49 = l_0_44 + l_0_48 * 8
          local l_0_50, l_0_51, l_0_52, l_0_53, l_0_54, l_0_55, l_0_56 = l_0_3(l_0_49)
          local l_0_57 = l_0_6 + l_0_56
          local l_0_58, l_0_59 = l_0_4(l_0_57)
          if l_0_59 <= 4000 and l_0_7 < l_0_58 then
            local l_0_60 = l_0_58 - l_0_7 + l_0_6
            local l_0_61 = (mp.readfile)(l_0_60, l_0_59)
            l_0_61 = (string.gsub)(l_0_61, "%z", "")
            for l_0_65 in pairs(l_0_5) do
              if l_0_61:match(l_0_65) ~= nil then
                (mp.set_mpattribute)("MpInternal_researchdata=TBSHash=" .. l_0_65)
                return mp.INFECTED
              end
            end
          end
        end
        -- DECOMPILER ERROR at PC176: Confused about usage of register R48 for local variables in 'ReleaseLocals'

      end
    end
    -- DECOMPILER ERROR at PC177: Confused about usage of register R47 for local variables in 'ReleaseLocals'

  end
end
do return mp.CLEAN end
-- DECOMPILER ERROR at PC181: Confused about usage of register R46 for local variables in 'ReleaseLocals'


