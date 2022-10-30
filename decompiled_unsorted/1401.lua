-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1401.luac 

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

-- DECOMPILER ERROR at PC43: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC45: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC46: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC49: Overwrote pending register: R6 in 'AssignReg'

l_0_4 = l_0_4(MpCommon.QuerySessionInformation, "Microsoft\\Windows Defender Advanced Threat Protection\\", MpCommon.WTSIsRemoteSession)
-- DECOMPILER ERROR at PC53: Overwrote pending register: R3 in 'AssignReg'

_ = l_0_4
if not l_0_3 then
  l_0_4 = mp
  l_0_4 = l_0_4.CLEAN
  return l_0_4
end
l_0_4 = reportSessionInformation
l_0_4()
l_0_4 = add_parents
l_0_4()
l_0_4 = mp
l_0_4 = l_0_4.INFECTED
return l_0_4

