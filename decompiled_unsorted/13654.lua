-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13654.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "\199\005")
;
(pe.mmap_patch_va)(pevars.sigaddr + 10, "\235")
return mp.INFECTED

