-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21846.luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
if not (MpCommon.GetPersistContextNoPath)("lnkarg_sb") then
  return mp.CLEAN
end
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
  l_0_4 = (string.lower)((this_sigattrlog[1]).utf8p2)
  local l_0_0 = nil
else
  do
    if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
      l_0_4 = (string.lower)((this_sigattrlog[2]).utf8p2)
    else
      if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
        l_0_4 = (string.lower)((this_sigattrlog[3]).utf8p2)
        local l_0_1 = nil
      else
        do
          if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 then
            l_0_4 = (string.lower)((this_sigattrlog[4]).utf8p2)
          else
            if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 then
              l_0_4 = (string.lower)((this_sigattrlog[5]).utf8p2)
              local l_0_2 = nil
            else
              do
                if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 then
                  l_0_4 = (string.lower)((this_sigattrlog[6]).utf8p2)
                else
                  if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).utf8p2 then
                    l_0_4 = (string.lower)((this_sigattrlog[7]).utf8p2)
                    local l_0_3 = nil
                  else
                    do
                      do return mp.CLEAN end
                      local l_0_5, l_0_6 = , (bm.get_process_relationships)()
                      for l_0_10,l_0_11 in ipairs(l_0_6) do
                        local l_0_7 = nil
                        -- DECOMPILER ERROR at PC146: Confused about usage of register: R8 in 'UnsetPending'

                        if not contains(R8_PC146.image_path, "explorer.exe") then
                          return mp.CLEAN
                        end
                      end
                      for l_0_15,l_0_16 in ipairs(l_0_5) do
                        local l_0_12 = nil
                        -- DECOMPILER ERROR at PC162: Confused about usage of register: R8 in 'UnsetPending'

                        if contains(l_0_4, R8_PC146) then
                          return mp.INFECTED
                        end
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
    end
  end
end

