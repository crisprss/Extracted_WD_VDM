-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18671.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
local l_0_2 = (string.lower)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = MpCommon.SetPersistContextNoPath
local l_0_4 = "DllFromOdbcAction"
local l_0_5 = {}
-- DECOMPILER ERROR at PC26: No list found for R5 , SetList fails

-- DECOMPILER ERROR at PC27: Overwrote pending register: R6 in 'AssignReg'

l_0_3(l_0_4, l_0_5, l_0_2)
l_0_3 = mp
l_0_3 = l_0_3.CLEAN
return l_0_3

