-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21741.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC15: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_3 = ((this_sigattrlog[2]).utf8p2):lower()
    if contains(l_0_3, {"alexansisplugin"}) then
      return mp.CLEAN
    end
    if not l_0_3 then
      return mp.CLEAN
    end
    local l_0_4 = nil
    local l_0_5 = {"(?:rundll32|regsvr32)(?:.exe)?\\s+\\w:\\\\(?:programdata|users\\\\public)\\\\[^\\\\]+\\.\\w{2,4}\\s*[,\\w$]+", "(?:rundll32|regsvr32)(?:.exe)?\\s+%userprofile%\\\\[^\\\\]+\\.\\w{2,4}\\s*[,\\w$]+"}
    for l_0_9,l_0_10 in ipairs(l_0_5) do
      local l_0_6 = false
      -- DECOMPILER ERROR at PC61: Confused about usage of register: R8 in 'UnsetPending'

      l_0_6 = (MpCommon.StringRegExpSearch)(R8_PC61, l_0_3)
      if l_0_6 then
        if extractDllForRegproc(l_0_3) and checkFileLastWriteTime(extractDllForRegproc(l_0_3), 3600) == false and (mp.IsKnownFriendlyFile)(extractDllForRegproc(l_0_3), true, false) == false then
          (bm.add_related_file)(extractDllForRegproc(l_0_3))
        end
        return mp.INFECTED
      end
    end
    return mp.CLEAN
  end
end

