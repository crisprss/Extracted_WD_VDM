-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/930.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC20: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC22: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC23: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC24: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC25: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC32: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC33: Overwrote pending register: R3 in 'AssignReg'

local l_0_3 = ((97).GetNormalizedScript)(true)
local l_0_4 = 1
-- DECOMPILER ERROR at PC38: Overwrote pending register: R5 in 'AssignReg'

local l_0_5 = 112
-- DECOMPILER ERROR at PC39: Overwrote pending register: R6 in 'AssignReg'

local l_0_6 = 47
-- DECOMPILER ERROR at PC40: Overwrote pending register: R7 in 'AssignReg'

local l_0_7 = 116
-- DECOMPILER ERROR at PC41: Overwrote pending register: R8 in 'AssignReg'

local l_0_8 = 101
-- DECOMPILER ERROR at PC44: Overwrote pending register: R9 in 'AssignReg'

if l_0_3 == nil or 110 < l_0_8 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC51: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC52: Overwrote pending register: R11 in 'AssignReg'

for l_0_12 = l_0_7, 116, 115 do
  if l_0_5 == l_0_1[l_0_4] then
    if l_0_4 == 5 then
      break
    end
  else
    -- DECOMPILER ERROR at PC71: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC75: Overwrote pending register: R4 in 'AssignReg'

  end
end
do
  do
    if l_0_4 == 1 or l_0_5 ~= l_0_1[l_0_4] or l_0_6 == 1 then
      for l_0_16 = 1, 10 do
        -- DECOMPILER ERROR at PC89: Overwrote pending register: R5 in 'AssignReg'

        if l_0_2[l_0_16] ~= l_0_5 then
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC96: Overwrote pending register: R7 in 'AssignReg'

      end
      return mp.INFECTED
    end
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

