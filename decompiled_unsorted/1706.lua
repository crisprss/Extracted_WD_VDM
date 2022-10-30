-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1706.luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  l_0_3 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_0, l_0_1, l_0_2 = {"http", "://(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)%.(%d%d?%d?)", "-q-i"}
end
do
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_3 ~= nil and not StringEndsWith(l_0_3, ".msi\"") and not StringEndsWith(l_0_3, ".msi\" ") then
    for l_0_7 = 1, #l_0_0 do
      local l_0_4 = nil
      -- DECOMPILER ERROR at PC43: Confused about usage of register: R5 in 'UnsetPending'

      if (string.find)(l_0_3, l_0_4[R5_PC43], 1, true) or (string.match)(l_0_3, l_0_4[R5_PC43]) then
        for l_0_12,l_0_13 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_3)) do
          local l_0_9 = nil
          -- DECOMPILER ERROR at PC66: Confused about usage of register: R11 in 'UnsetPending'

          R11_PC66 = (mp.ContextualExpandEnvironmentVariables)(R11_PC66)
          if (sysio.IsFileExists)(R11_PC66) and ((string.lower)(R11_PC66)):match("(%w+%.exe)$") ~= nil then
            (bm.add_related_file)(R11_PC66)
          end
        end
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

