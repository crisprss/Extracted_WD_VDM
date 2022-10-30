-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2744.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
local l_0_1 = l_0_0.Arguments
if isnull(l_0_1) then
  l_0_1 = l_0_0.RelativePath
end
l_0_1 = l_0_1:lower()
do
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC25: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC26: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC28: Overwrote pending register: R5 in 'AssignReg'

  if ("odbcconf")("rundll32", "regsvr32") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

