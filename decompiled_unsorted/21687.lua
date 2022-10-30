-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21687.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  do
    local l_0_1 = split(l_0_0, ",")
    local l_0_2 = {}
    processActions = function(l_1_0)
  -- function num : 0_0 , upvalues : l_0_2
  for l_1_4,l_1_5 in pairs(l_1_0) do
    local l_1_6 = (MpCommon.Base64Decode)(l_1_5)
    l_1_6 = explode(l_1_6, "_")
    for l_1_10,l_1_11 in ipairs(l_1_6) do
      l_1_11 = split(l_1_11, ":")
      local l_1_12, l_1_13 = pcall(mp.GetPPidFromPid, l_1_11[1])
      local l_1_14 = l_0_2
      local l_1_15 = l_1_11[1]
      local l_1_16 = {}
      l_1_16.success = l_1_12
      l_1_16.ppid = l_1_13
      l_1_14[l_1_15] = l_1_16
      if l_1_12 then
        l_1_14 = l_1_11[2]
        l_1_15 = bm
        l_1_15 = l_1_15.trigger_sig
        l_1_16 = "Heimdall_ProcessActions"
        l_1_15(l_1_16, l_1_14, l_1_13)
      end
    end
  end
  -- DECOMPILER ERROR at PC46: Confused about usage of register R1 for local variables in 'ReleaseLocals'

end

    local l_0_3, l_0_4 = pcall(processActions, l_0_1)
    do
      if not l_0_3 then
        local l_0_5 = {}
        l_0_5.error = l_0_4
        l_0_2.error = l_0_5
      end
      local l_0_6 = pcall
      local l_0_7 = mp.GetUrlReputation
      local l_0_8 = {}
      -- DECOMPILER ERROR at PC30: No list found for R7 , SetList fails

      -- DECOMPILER ERROR at PC31: Overwrote pending register: R8 in 'AssignReg'

      l_0_6(l_0_7, l_0_8, ("http://962b56e5-5eb2-4ed3-8757-3f22f190d202.report")(l_0_2))
    end
    do
      return mp.CLEAN
    end
  end
end

