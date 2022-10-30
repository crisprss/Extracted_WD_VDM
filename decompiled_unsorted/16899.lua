-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16899.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
;
(table.insert)(l_0_0, (bm.get_imagepath)())
;
(MpCommon.SetPersistContextNoPath)("UACBypassExp.ZK!dllhost", l_0_0, 3)
return mp.CLEAN

