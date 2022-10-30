-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17389.luac 

-- params : ...
-- function num : 0
(pe.set_regval)(pe.REG_EAX, 11)
;
(pe.set_regval)(pe.REG_EBX, 1970169159)
;
(pe.mmap_patch_va)(pevars.sigaddr + 1, "êêêê")
return mp.INFECTED

