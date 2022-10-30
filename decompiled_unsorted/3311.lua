-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3311.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
local l_0_3 = ""
if l_0_0 == "wscript.exe" then
  if (l_0_2 == "remoteconnection.ocx" or l_0_2 == "scheduleservices.ocx") and (string.find)(l_0_1, "\\windows\\downloaded program files\\", 1, true) then
    return mp.CLEAN
  end
  l_0_3 = "DllDroppedByWscript"
else
  if l_0_0 == "cscript.exe" then
    if (l_0_2 == "clrtablist.dll" or l_0_2 == "clrmachineInfo.dll" or l_0_2 == "certadm.dll" or l_0_2 == "riainrsimport.dll") and (string.find)(l_0_1, "\\windows\\syswow64\\", 1, true) then
      return mp.CLEAN
    end
    l_0_3 = "DllDroppedByCscript"
  else
    return mp.CLEAN
  end
end
local l_0_4 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
local l_0_5 = (MpCommon.QueryPersistContext)(l_0_4, l_0_3)
if not l_0_5 then
  (MpCommon.AppendPersistContext)(l_0_4, l_0_3, 100)
end
;
(mp.set_mpattribute)("MpDisableCaching")
return mp.INFECTED

