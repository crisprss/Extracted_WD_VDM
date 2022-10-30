-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3101.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
if mp.HEADERPAGE_SZ < 256 then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = {}
;
(table.insert)(l_0_1, l_0_0)
;
(MpCommon.SetPersistContextNoPath)("lnkarg_sb", l_0_1, 10)
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC49: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC50: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC52: Overwrote pending register: R5 in 'AssignReg'

  if not ("odbcconf")("rundll32", "regsvr32") then
    return mp.CLEAN
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

