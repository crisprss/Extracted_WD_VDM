-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16393.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr + 8, "x")
;
(pe.mmap_patch_va)(pevars.sigaddr + 14, "x")
;
(pe.mmap_patch_va)(pevars.sigaddr + 20, "x")
return mp.INFECTED

