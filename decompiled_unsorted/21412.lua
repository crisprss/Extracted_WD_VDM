-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21412.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[9]).matched and (this_sigattrlog[9]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5, l_0_6, l_0_7 = nil, nil
  else
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R0 in 'UnsetPending'

  do
    if not (this_sigattrlog[10]).matched or (this_sigattrlog[10]).utf8p2 == nil or contains((this_sigattrlog[10]).utf8p2, "%-[eE][ncodemaNCODEMA]*%s+", false) then
      local l_0_4, l_0_8 = , NormalizeCmdline("powershell", (this_sigattrlog[10]).utf8p2)
      if not contains(l_0_8, "downloadstring") then
        return mp.CLEAN
      end
      l_0_4 = l_0_8
    end
    -- DECOMPILER ERROR at PC50: Confused about usage of register: R0 in 'UnsetPending'

    if not isIEXfound(l_0_4) then
      return mp.CLEAN
    end
    local l_0_9 = nil
    if contains(l_0_9, {"raw.githubusercontent.com"}) and IsSuspPSModule(l_0_9) then
      (bm.add_related_string)("PSPublicStager_c_cmdline", l_0_9, bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

