-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1446.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.hstr_full_log)()
if l_0_0 ~= nil then
  if (l_0_0[1]).matched or (l_0_0[2]).matched then
    set_research_data("TamperingCMD", "systemsettingsadminflows", false)
  else
    if (l_0_0[3]).matched or (l_0_0[4]).matched then
      set_research_data("TamperingCMD", "DisableRealtimeMonitoring", false)
    else
      if (l_0_0[5]).matched or (l_0_0[6]).matched or (l_0_0[7]).matched or (l_0_0[8]).matched then
        set_research_data("TamperingCMD", "DisableAntiVirus_DisableAntiSpyware", false)
      else
        if (l_0_0[9]).matched or (l_0_0[10]).matched or (l_0_0[11]).matched or (l_0_0[12]).matched then
          set_research_data("TamperingCMD", "ServiceStop", false)
        end
      end
    end
  end
end
local l_0_1 = (mp.GetScannedPPID)()
local l_0_2 = false
_ = pcall(MpCommon.QuerySessionInformation, l_0_1, MpCommon.WTSIsRemoteSession)
if (MpCommon.NidSearch)(mp.NID_ENABLE_EXTENDED_BAFS, 3) then
  set_research_data("Reason", "AggressivePeTrigger", false)
else
  if GetRollingQueueKeys("ThreatsOnMachine_Lua") ~= nil then
    local l_0_3 = GetRollingQueueKeys("ThreatsOnMachine_Lua")
    if type(l_0_3) == "table" and next(l_0_3) ~= nil then
      set_research_data("Reason", "ExistingThreatsOnMachine", false)
      set_research_data("ThreatsOnMachine", "[" .. (table.concat)(l_0_3, "|") .. "]", false)
    end
  else
    do
      if l_0_2 then
        local l_0_4 = MpCommon.WTSUserName
        if (MpCommon.QueryPersistContextNoPath)("MpNewRemoteUsers", l_0_4) then
          set_research_data("Reason", "NewRemoteUser", false)
        end
      else
        do
          do return mp.CLEAN end
          return mp.LOWFI
        end
      end
    end
  end
end

