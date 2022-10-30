-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21057.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5 = nil
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    bm_AddRelatedFileFromCommandLine((this_sigattrlog[2]).utf8p2, nil, nil, 2)
    reportSessionInformation()
    sms_untrusted_process()
    local l_0_6 = nil
    -- DECOMPILER ERROR at PC46: Overwrote pending register: R1 in 'AssignReg'

    -- DECOMPILER ERROR at PC56: Overwrote pending register: R1 in 'AssignReg'

    if ((this_sigattrlog[3]).matched and not (this_sigattrlog[4]).matched) or mp.CLEAN == mp.INFECTED then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

