-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21711.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
-- DECOMPILER ERROR at PC12: Overwrote pending register: R1 in 'AssignReg'

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_1, l_0_7 = , nil
  local l_0_2 = (mp.GetParentProcInfo)(l_0_7)
  if l_0_2 ~= nil then
    local l_0_3 = (string.lower)(l_0_2.image_path)
    if l_0_3 ~= nil and (string.find)(l_0_3, "udclientservice.exe", 1, true) ~= nil then
      return mp.CLEAN
    end
  end
else
  do
    do return mp.CLEAN end
    do
      if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
        local l_0_4 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p2))
      else
      end
      -- DECOMPILER ERROR at PC102: Overwrote pending register: R0 in 'AssignReg'

      if (not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p2 == nil or (this_sigattrlog[1]).matched) and (this_sigattrlog[1]).utf8p2 ~= nil then
        local l_0_5, l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p2))
      else
        do
          do return mp.CLEAN end
          -- DECOMPILER ERROR at PC107: Confused about usage of register: R0 in 'UnsetPending'

          -- DECOMPILER ERROR at PC111: Confused about usage of register: R0 in 'UnsetPending'

          if l_0_5 ~= nil then
            local l_0_8 = nil
            for l_0_12,l_0_13 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_5)) do
              local l_0_9, l_0_10 = nil
              -- DECOMPILER ERROR at PC119: Confused about usage of register: R7 in 'UnsetPending'

              -- DECOMPILER ERROR at PC125: Confused about usage of register: R7 in 'UnsetPending'

              if (sysio.IsFileExists)(1) then
                (bm.add_related_file)(1)
              end
            end
          end
          do
            return mp.INFECTED
          end
        end
      end
    end
  end
end

