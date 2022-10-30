-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3307.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_2 == "rbkvssprovider.dll" and ((string.find)(l_0_1, "\\temp\\rubrik_vmware", 1, true) or (string.find)(l_0_1, "program files\\rubrik\\rubrik backup service\\", 1, true)) then
  return mp.CLEAN
end
if (string.find)(l_0_1, "windows\\syswow64", 1, true) and (l_0_2 == "ven2232.olb" or l_0_2 == "vbako32.olb" or l_0_2 == "vbaend32.olb" or l_0_2 == "vbade32.olb" or l_0_2 == "vbachs32.olb" or l_0_2 == "mscomctl.ocx") then
  return mp.CLEAN
end
if l_0_0 == "excel.exe" then
  local l_0_3 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  local l_0_4 = "DllDroppedByExcel"
  local l_0_5 = (MpCommon.QueryPersistContext)(l_0_3, l_0_4)
  if not l_0_5 then
    (MpCommon.AppendPersistContext)(l_0_3, l_0_4, 100)
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  return mp.INFECTED
end
do
  return mp.CLEAN
end

