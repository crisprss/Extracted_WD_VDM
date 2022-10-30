-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21684.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC40: Overwrote pending register: R0 in 'AssignReg'

  do
    if (not (this_sigattrlog[2]).matched or (this_sigattrlog[2]).utf8p2 == nil or (this_sigattrlog[3]).matched) and (this_sigattrlog[3]).utf8p2 ~= nil then
      local l_0_1, l_0_2 = (this_sigattrlog[2]).utf8p2
    end
    -- DECOMPILER ERROR at PC41: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC45: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      local l_0_3 = nil
      local l_0_4 = (mp.GetExecutablesFromCommandLine)(l_0_1)
      for l_0_8,l_0_9 in ipairs(l_0_4) do
        local l_0_5 = {[".xls"] = true, [".doc"] = true, [".ppt"] = true, [".pps"] = true, docx = true, pptx = true, ppsx = true, xlsx = true, [".rtf"] = true, [".xml"] = true, dotx = true, dotm = true, [".odt"] = true, xlsb = true, xltx = true, xltm = true, xlam = true, [".xla"] = true, docm = true, xlsm = true, pptm = true}
        -- DECOMPILER ERROR at PC75: Confused about usage of register: R7 in 'UnsetPending'

        if (string.len)(R7_PC75) > 4 and (sysio.IsFileExists)(R7_PC75) and l_0_5[(string.sub)(R7_PC75, -4)] then
          (bm.add_related_file)(l_0_10)
        end
      end
    end
    do
      l_0_4 = mp
      l_0_4 = l_0_4.INFECTED
      return l_0_4
    end
  end
end

