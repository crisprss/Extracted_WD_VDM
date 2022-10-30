-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/105.luac 

-- params : ...
-- function num : 0
if not (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_1, l_0_2 = (MpCommon.StringRegExpSearch)("(openhardwaremonitorlib|mpksldrv)", (string.lower)(l_0_0))
if l_0_1 == true then
  return mp.CLEAN
end
local l_0_3 = (mp.enum_mpattributesubstring)("ALF:HackTool:Win32/DriverAbuse")
if #l_0_3 > 0 then
  return mp.CLEAN
end
local l_0_4 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_6 = (MpCommon.PathToWin32Path)(l_0_5)
if l_0_6 == nil or l_0_4 == nil then
  return mp.CLEAN
end
if l_0_6 == "" or l_0_4 == "" then
  return mp.CLEAN
end
l_0_4 = (string.lower)(l_0_4)
local l_0_7 = l_0_6 .. "\\" .. l_0_4
l_0_1 = (MpCommon.StringRegExpSearch)("(agentpackagemonitoring)", l_0_4)
if l_0_1 == true then
  return mp.CLEAN
end
if (mp.IsKnownFriendlyFile)((mp.getfilename)(), true, false) then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("MpInternal_researchdata=parentProcessPath=" .. l_0_7)
;
(mp.set_mpattribute)("MpInternal_researchdata=parentProcessName=" .. l_0_4)
return mp.INFECTED

