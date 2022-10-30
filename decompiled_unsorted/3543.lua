-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3543.luac 

-- params : ...
-- function num : 0
getCachePaths = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  local l_1_2 = {}
  -- DECOMPILER ERROR at PC7: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC11: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC38: Overwrote pending register: R6 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R7 in 'AssignReg'

  l_1_1["wlmail.exe"], l_1_2 = l_1_2, {"%internet_cache%\\content.ie5\\", "%internet_cache%\\ie\\", "microsoft\\windows\\temporary internet files\\content.ie5\\", "microsoft\\windows\\inetcache\\ie\\", "appdata\\roaming\\qualcomm\\eudora\\attachments\\"}
  l_1_1["hxmail.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps"}
  l_1_1["hxtsr.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps"}
  l_1_1["runtimebroker.exe"], l_1_2 = l_1_2, {"appdata\\local\\packages\\microsoft.windowscommunicationsapps_8wekyb3d8bbwe\\localstate\\files\\s0\\"}
  l_1_2 = l_1_2(l_1_0)
  l_1_2 = l_1_1[l_1_2]
  return l_1_2
end

isOutlookProcess = function(l_2_0)
  -- function num : 0_1
  if l_2_0 or (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME) == nil then
    return 
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R1 in 'UnsetPending'

  if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" or (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "olk.exe" then
    (mp.set_mpattribute)("BM_OutlookProcessOlk")
    return true
  else
    -- DECOMPILER ERROR at PC26: Confused about usage of register: R1 in 'UnsetPending'

    if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "msedgewebview2.exe" then
      local l_2_1 = nil
      if (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID) == nil then
        return false
      end
      local l_2_2 = nil
      if (string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))) == nil or #(string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))) <= 25 then
        return false
      end
      local l_2_3 = nil
      if (string.match)((string.lower)((string.gsub)((string.lower)((mp.GetProcessCommandLine)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID))), " ", "")), "%-%-webview%-exe%-name=olk%.exe") then
        (mp.set_mpattribute)("BM_OutlookProcessWebView")
        return true
      end
    end
  end
  do
    return false
  end
end


