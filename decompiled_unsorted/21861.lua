-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21861.luac 

-- params : ...
-- function num : 0
string_starts = function(l_1_0, l_1_1)
  -- function num : 0_0
  do return (string.sub)(l_1_0, 1, (string.len)(l_1_1)) == l_1_1 end
  -- DECOMPILER ERROR: 1 unprocessed JMP targets
end

local l_0_0 = (string.lower)((sigattr_head[1]).utf8p1)
if not string_starts(l_0_0, (string.lower)((mp.ContextualExpandEnvironmentVariables)("%appdata%"))) then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC35: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC38: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC40: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC41: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC42: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC43: Overwrote pending register: R9 in 'AssignReg'

-- DECOMPILER ERROR at PC44: Overwrote pending register: R10 in 'AssignReg'

-- DECOMPILER ERROR at PC45: Overwrote pending register: R11 in 'AssignReg'

-- DECOMPILER ERROR at PC46: No list found for R2 , SetList fails

local l_0_3 = {}
-- DECOMPILER ERROR at PC48: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC49: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC50: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC51: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC52: Overwrote pending register: R4 in 'AssignReg'

local l_0_4 = "disk"
-- DECOMPILER ERROR at PC53: Overwrote pending register: R5 in 'AssignReg'

local l_0_5 = "dsk"
-- DECOMPILER ERROR at PC54: Overwrote pending register: R6 in 'AssignReg'

local l_0_6 = "ms"
-- DECOMPILER ERROR at PC55: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC57: Overwrote pending register: R8 in 'AssignReg'

-- DECOMPILER ERROR at PC58: Overwrote pending register: R9 in 'AssignReg'

do
  local l_0_7 = (("hp").match)("intel", "amd")
  -- DECOMPILER ERROR at PC62: Overwrote pending register: R10 in 'AssignReg'

  for l_0_11 = 1, l_0_4, "dll" do
    -- DECOMPILER ERROR at PC64: Overwrote pending register: R12 in 'AssignReg'

    if ("udp")(l_0_7, l_0_1[l_0_11]) then
      for l_0_15 = 1, l_0_5 do
        if string_starts((string.sub)(l_0_7, (string.len)(l_0_1[l_0_11]) + 1), l_0_2[l_0_15]) then
          for l_0_19 = 1, l_0_6 do
            if (string.sub)(l_0_7, (string.len)(l_0_1[l_0_11]) + (string.len)(l_0_2[l_0_15]) + 1) == l_0_3[l_0_19] then
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

