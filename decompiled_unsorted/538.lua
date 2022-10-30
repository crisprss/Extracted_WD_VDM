-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/538.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = false
local l_0_2 = false
l_0_2 = pcall(MpCommon.QuerySessionInformation, l_0_0.ppid, MpCommon.WTSIsRemoteSession)
if l_0_2 and l_0_1 then
  reportSessionInformation()
  reportRelevantUntrustedEntities()
  return mp.INFECTED
end
return mp.CLEAN

