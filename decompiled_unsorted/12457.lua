-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12457.luac 

-- params : ...
-- function num : 0
(MpCommon.ClearDnsServers)()
updateSystemDNSServers()
return mp.CLEAN

