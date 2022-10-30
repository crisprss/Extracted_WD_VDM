-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3354.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.CLEAN
if (mp.readu_u32)(headerpage, 5) == 2309737967 then
  (mp.set_mpattribute)("Lua:NtdsditEsedbFileHeader.A")
  ;
  (mp.set_mpattribute)("BM_Ntdsdit_ESEDB_FILE")
  l_0_0 = mp.INFECTED
end
if (mp.readu_u32)(headerpage, 1) == 22233924 then
  (mp.set_mpattribute)("BM_ADML_FILE")
  l_0_0 = mp.INFECTED
end
if (mp.readu_u32)(headerpage, 1) == 1181117509 and (mp.readu_u32)(headerpage, 5) == 6646889 then
  (mp.set_mpattribute)("BM_EVTX_FILE")
  l_0_0 = mp.INFECTED
end
if (mp.readu_u32)(headerpage, 1) == 1301298411 and (mp.readu_u32)(headerpage, 5) == 1397703763 and (mp.readu_u32)(headerpage, 44) ~= 1397311045 then
  local l_0_1 = false
  if (mp.readu_u32)(headerpage, 55) == 827605318 then
    local l_0_2 = (mp.readu_u16)(headerpage, 58)
    if l_0_2 == 12849 then
      l_0_1 = true
      ;
      (mp.set_mpattribute)("BM_VirtualFS_FAT12")
    else
      if l_0_2 == 13873 then
        l_0_1 = true
        ;
        (mp.set_mpattribute)("BM_VirtualFS_FAT16")
      else
        ;
        (mp.set_mpattribute)("BM_VirtualFS_FAT_UNKNOWN")
        ;
        (mp.set_mpattribute)("BM_VirtualFS_FAT" .. tostring(l_0_2))
      end
    end
  else
    do
      do
        do
          if (mp.readu_u32)(headerpage, 55) == 861159750 then
            local l_0_3 = (mp.readu_u16)(headerpage, 58)
            if l_0_3 == 12851 then
              l_0_1 = true
              ;
              (mp.set_mpattribute)("BM_VirtualFS_FAT32")
            else
              ;
              (mp.set_mpattribute)("BM_VirtualFS_FAT_UNKNOWN")
              ;
              (mp.set_mpattribute)("BM_VirtualFS_FAT" .. tostring(l_0_3))
            end
          end
          if l_0_1 then
            l_0_0 = mp.INFECTED
            ;
            (mp.set_mpattribute)("BM_VirtualFS_FAT")
          end
          if l_0_0 == mp.INFECTED then
            return mp.INFECTED
          end
          return mp.CLEAN
        end
      end
    end
  end
end

