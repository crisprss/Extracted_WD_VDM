-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1451.luac 

-- params : ...
-- function num : 0
if IsSenseRelatedProc() == true then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
local l_0_1 = {}
local l_0_2 = {}
-- DECOMPILER ERROR at PC22: No list found for R2 , SetList fails

local l_0_3 = {}
-- DECOMPILER ERROR at PC24: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC26: No list found for R3 , SetList fails

local l_0_4 = {}
-- DECOMPILER ERROR at PC28: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC30: No list found for R4 , SetList fails

-- DECOMPILER ERROR at PC31: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC35: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC40: Overwrote pending register: R2 in 'AssignReg'

if l_0_2 == true then
  return l_0_2
end
-- DECOMPILER ERROR at PC42: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC43: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC44: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC45: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC48: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC49: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC50: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC51: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC52: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC53: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC56: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC57: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC58: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC59: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC60: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC61: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC64: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC65: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC66: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC67: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC68: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC69: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC72: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC73: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC74: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC75: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC76: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC77: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC80: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC81: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC82: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC83: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC84: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC85: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC88: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC89: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC90: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC91: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC92: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC93: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC95: Overwrote pending register: R6 in 'AssignReg'

if ((((not l_0_3 or l_0_3) and not l_0_3) or l_0_3) and not l_0_3) or l_0_3 then
  l_0_4 = l_0_4("(Block|RTP|GpDisable|Srv)", "Microsoft\\Windows Defender Advanced Threat Protection\\")
  _ = "(Block|RTP|GpDisable|Srv)"
  -- DECOMPILER ERROR at PC98: Overwrote pending register: R3 in 'AssignReg'

  if not l_0_3 then
    l_0_4 = mp
    l_0_4 = l_0_4.CLEAN
    return l_0_4
  end
  l_0_4 = 7200
  local l_0_5 = 100
  AppendToRollingQueue("TamperingAlerts", l_0_2, 1, l_0_4, l_0_5)
  local l_0_6 = GetRollingQueueKeys("ThreatsOnMachine_Lua")
  do
    if l_0_6 ~= nil and type(l_0_6) == "table" then
      local l_0_7 = "["
      for l_0_11,l_0_12 in ipairs(l_0_6) do
        l_0_7 = l_0_7 .. "|" .. l_0_12
      end
      l_0_7 = l_0_7 .. "]"
      if l_0_7 ~= "[]" then
        (bm.add_related_string)("HackToolsSeenOnDevice", l_0_7, bm.RelatedStringBMReport)
        ;
        (bm.add_related_string)("TamperingAlert", l_0_2, bm.RelatedStringBMReport)
        add_parents()
        return mp.INFECTED
      end
    end
    local l_0_13 = "["
    local l_0_14 = GetRollingQueueKeys("TamperingAlerts")
    do
      if l_0_14 ~= nil and type(l_0_14) == "table" then
        local l_0_15 = 0
        for l_0_19,l_0_20 in ipairs(l_0_14) do
          l_0_15 = l_0_15 + 1
          l_0_13 = l_0_13 .. "|" .. l_0_20
        end
        l_0_13 = l_0_13 .. "]"
        if l_0_15 < 2 then
          return mp.CLEAN
        end
        ;
        (bm.add_related_string)("TamperingAlertsOnDevice", l_0_13, bm.RelatedStringBMReport)
        add_parents()
        return mp.INFECTED
      end
      return mp.CLEAN
    end
  end
end

