-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2499.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetLnkInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
do
  local l_0_1, l_0_2 = l_0_0.Arguments or nil
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_1 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC18: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC24: Confused about usage of register: R1 in 'UnsetPending'

  if contains(l_0_1, ".js") and contains(l_0_1, "..\\..\\") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

