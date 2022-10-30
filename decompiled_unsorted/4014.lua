-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4014.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_1 = (mp.GetParentProcInfo)(l_0_0)
if l_0_1 ~= nil then
  local l_0_2 = {}
  local l_0_3 = {}
  -- DECOMPILER ERROR at PC15: No list found for R3 , SetList fails

  local l_0_4 = {}
  -- DECOMPILER ERROR at PC17: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC19: No list found for R4 , SetList fails

  local l_0_5 = {}
  -- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC23: No list found for R5 , SetList fails

  local l_0_6 = {}
  -- DECOMPILER ERROR at PC25: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC27: No list found for R6 , SetList fails

  -- DECOMPILER ERROR at PC28: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC36: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R4 in 'AssignReg'

  if l_0_3 then
    l_0_3(l_0_4)
    -- DECOMPILER ERROR at PC40: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC41: Overwrote pending register: R3 in 'AssignReg'

    return l_0_3
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

