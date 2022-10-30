-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13332.luac 

-- params : ...
-- function num : 0
(pe.mmap_patch_va)(pevars.sigaddr, "êê\144")
;
(pe.mmap_patch_va)(pevars.sigaddr + 6, "êê\144")
return mp.INFECTED

