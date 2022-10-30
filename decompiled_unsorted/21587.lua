-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21587.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil, nil
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2 = nil
  local l_0_3 = nil
  if GetRollingQueueKeyValue("app_version_" .. l_0_0:match("(%w+%.exe)$"), l_0_2) == nil then
    local l_0_4, l_0_5, l_0_6 = , Get_file_version(l_0_2)
    if l_0_5 == nil then
      return mp.CLEAN
    end
    local l_0_7 = nil
    local l_0_8 = "app_version_" .. l_0_3
    local l_0_9 = 31536000
    if l_0_5 ~= nil then
      local l_0_10 = 50
      AppendToRollingQueue(l_0_8, l_0_2, Version_to_str(l_0_5), l_0_9, l_0_10)
      ;
      (bm.add_related_string)("SQLVersion", Version_to_str(l_0_5), bm.RelatedStringBMReport)
    else
      do
        do
          -- DECOMPILER ERROR at PC69: Confused about usage of register: R8 in 'UnsetPending'

          if l_0_6 ~= nil then
            AppendToRollingQueue(l_0_8, l_0_2, l_0_6, l_0_9, l_0_10)
            ;
            (bm.add_related_string)("SQLVersion", l_0_6, bm.RelatedStringBMReport)
          else
            ;
            (bm.add_related_string)("SQLVersion", "ERROR", bm.RelatedStringBMReport)
          end
          -- DECOMPILER ERROR at PC90: Confused about usage of register: R2 in 'UnsetPending'

          ;
          (bm.add_related_string)("SQLVersion", l_0_4, bm.RelatedStringBMReport)
          return mp.INFECTED
        end
      end
    end
  end
end

