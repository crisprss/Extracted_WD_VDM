-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4065.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_13, l_0_18 = nil, nil
    local l_0_0, l_0_2, l_0_4, l_0_6, l_0_8, l_0_9, l_0_11, l_0_14, l_0_16 = nil
  end
  if (this_sigattrlog[2]).matched then
    local l_0_1 = l_0_13
  else
    do
      -- DECOMPILER ERROR at PC27: Overwrote pending register: R1 in 'AssignReg'

      -- DECOMPILER ERROR at PC36: Overwrote pending register: R1 in 'AssignReg'

      if not (this_sigattrlog[3]).matched or (this_sigattrlog[4]).matched then
        local l_0_3 = nil
      else
        do
          -- DECOMPILER ERROR at PC45: Overwrote pending register: R1 in 'AssignReg'

          -- DECOMPILER ERROR at PC54: Overwrote pending register: R1 in 'AssignReg'

          if not (this_sigattrlog[5]).matched or (this_sigattrlog[6]).matched then
            local l_0_5 = nil
          else
            do
              -- DECOMPILER ERROR at PC63: Overwrote pending register: R1 in 'AssignReg'

              -- DECOMPILER ERROR at PC72: Overwrote pending register: R1 in 'AssignReg'

              do
                if not (this_sigattrlog[7]).matched or (this_sigattrlog[8]).matched then
                  local l_0_7, l_0_10, l_0_12, l_0_15, l_0_17 = , (this_sigattrlog[2]).utf8p2
                else
                end
                -- DECOMPILER ERROR at PC82: Confused about usage of register: R0 in 'UnsetPending'

                -- DECOMPILER ERROR at PC86: Confused about usage of register: R2 in 'UnsetPending'

                -- DECOMPILER ERROR at PC90: Unhandled construct in 'MakeBoolean' P3

                if ((this_sigattrlog[9]).matched and not l_0_7) or not l_0_12 then
                  return mp.CLEAN
                end
                -- DECOMPILER ERROR at PC93: Confused about usage of register: R2 in 'UnsetPending'

                local l_0_19 = nil
                if not (string.match)(l_0_12, "/([^/]+)$") then
                  return mp.CLEAN
                end
                -- DECOMPILER ERROR at PC103: Confused about usage of register: R1 in 'UnsetPending'

                if (string.find)((this_sigattrlog[9]).utf8p2, (string.match)(l_0_12, "/([^/]+)$"), 1, true) then
                  return mp.INFECTED
                end
                return mp.CLEAN
              end
            end
          end
        end
      end
    end
  end
end

