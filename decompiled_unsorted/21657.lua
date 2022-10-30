-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21657.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "odbcconf.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
l_0_1 = normalize_path(l_0_1)
if (MpCommon.QueryPersistContext)(l_0_1, "DllFromRsp") then
  (mp.set_mpattribute)("Lua:Context/DllViaRspRegsvrLoad")
end
local l_0_3 = (MpCommon.GetPersistContextNoPath)("DllFromOdbcAction")
for l_0_7,l_0_8 in ipairs(l_0_3) do
  if l_0_8:find(l_0_2, 1, true) or l_0_8:find(l_0_1, 1, true) then
    (mp.set_mpattribute)("Lua:Context/DllViaOdbcconfLoad")
  end
end
return mp.CLEAN

