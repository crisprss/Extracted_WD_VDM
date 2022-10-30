-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20658.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  else
  end
  if (this_sigattrlog[2]).matched then
    local l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
    local l_0_3 = "(?:rundll32|regsvr32)(?:.exe)?\\s+\\w:\\\\programdata\\\\[^\\\\]+\\.\\w{2,4}"
    -- DECOMPILER ERROR at PC33: Overwrote pending register: R2 in 'AssignReg'

    if false then
      bm_AddRelatedFileFromCommandLine(l_0_2, nil, nil, 2)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

