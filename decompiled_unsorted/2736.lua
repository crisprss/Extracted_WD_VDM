-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2736.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0 = 10800
  local l_0_1 = 10
  local l_0_2 = (mp.enum_mpattributesubstring)("Detection:HackTool:")
  if #l_0_2 > 0 then
    for l_0_6,l_0_7 in ipairs(l_0_2) do
      AppendToRollingQueue("ThreatsOnMachine_Lua", l_0_7, 1, l_0_0, l_0_1)
    end
  end
  do
    l_0_2 = (mp.enum_mpattributesubstring)("Detection:Trojan:")
    if #l_0_2 > 0 then
      for l_0_11,l_0_12 in ipairs(l_0_2) do
        AppendToRollingQueue("ThreatsOnMachine_Lua", l_0_12, 1, l_0_0, l_0_1)
      end
    end
    do
      l_0_0 = mp
      l_0_0 = l_0_0.CLEAN
      return l_0_0
    end
  end
end

