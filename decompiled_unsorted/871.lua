-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/871.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
local l_0_1 = {}
l_0_1["iexplore.exe"] = ""
l_0_1["browser_broker.exe"] = ""
l_0_1["firefox.exe"] = ""
l_0_1["chrome.exe"] = ""
l_0_1["msedge.exe"] = ""
l_0_1["opera.exe"] = ""
l_0_1["safari.exe"] = ""
l_0_1["microsoftedge.exe"] = ""
l_0_1["microsoftedgecp.exe"] = ""
local l_0_2 = false
local l_0_3 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_1[l_0_3] and l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  l_0_2 = true
else
  if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and l_0_0 == mp.SCANREASON_ONOPEN then
    local l_0_4 = (mp.GetMOTWZone)()
    if l_0_4 == 3 or l_0_4 == 4 then
      l_0_2 = true
    end
  end
end
do
  local l_0_5 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
  local l_0_6 = (mp.getfilename)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)))
  if l_0_5 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC112: Unhandled construct in 'MakeBoolean' P3

  if (#l_0_5 >= 17 and l_0_5:sub(2, 17) == ":\\program files\\") or #l_0_5 < 23 or #l_0_5 >= 11 and l_0_5:sub(2, 11) == ":\\windows\\" then
    return mp.CLEAN
  end
  if l_0_6 and l_0_5 and l_0_2 then
    (mp.set_mpattribute)("MpDisableCaching")
    ;
    (MpCommon.AppendPersistContext)(l_0_5, "Lua:LuaHighRiskJSinZipWebVector.A", 0)
    AppendToRollingQueue("LuaHighRiskJSinZipWebVector", l_0_6, l_0_5)
    return mp.INFECTED
  end
  return mp.CLEAN
end

