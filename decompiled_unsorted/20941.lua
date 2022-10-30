-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20941.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or contains((this_sigattrlog[3]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC45: Confused about usage of register: R1 in 'UnsetPending'

      if contains(NormalizeCmdline("powershell", (this_sigattrlog[3]).utf8p2), "downloadstring") then
        l_0_4 = NormalizeCmdline("powershell", (this_sigattrlog[3]).utf8p2)
        ;
        (bm.add_related_string)("WmiprvseRemoteProc_c", l_0_4, bm.RelatedStringBMReport)
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

