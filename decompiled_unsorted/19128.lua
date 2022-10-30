-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19128.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
local l_0_3 = l_0_2 .. "\\" .. l_0_0
;
(mp.set_mpattribute)("MpInternal_researchdata=parentProcessPath=" .. l_0_3)
return mp.INFECTED

