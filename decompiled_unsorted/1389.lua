-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1389.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
local l_0_1 = false
_ = pcall(MpCommon.QuerySessionInformation, l_0_0, MpCommon.WTSIsRemoteSession)
do
  if l_0_1 then
    local l_0_2 = MpCommon.WTSClientProtocolType
    if l_0_2 == 2 then
      set_research_data("Protocol", "RDP", false)
      return mp.LOWFI
    end
  end
  local l_0_3 = GetRollingQueueKeys("ThreatsOnMachine_Lua")
  if l_0_3 ~= nil and type(l_0_3) == "table" then
    local l_0_4 = 0
    local l_0_5 = "["
    for l_0_9,l_0_10 in ipairs(l_0_3) do
      l_0_5 = l_0_5 .. "|" .. l_0_10
      l_0_4 = l_0_4 + 1
    end
    if l_0_4 > 0 then
      set_research_data("ThreatsOnMachine", l_0_5, false)
      return mp.LOWFI
    end
  end
  do
    return mp.CLEAN
  end
end

