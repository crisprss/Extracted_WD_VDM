-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3158.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
local l_0_2 = l_0_1:sub(-3)
local l_0_3 = "tdb|edb|mdb|dat|ore|pds|sdb|bim|vol|asf|adb|tmp"
if l_0_3:find(l_0_2, 1, true) then
  return mp.INFECTED
end
local l_0_4 = "catdb|mail.msmessagestore|dhcp.mdb|webcachev01.dat|cachestorage.edb|windowsmail.msmessagestore|defaultstore|actorstatestore|persiststore.edb|imosstore|fs.edb|rm.edb|upgradeservicestore|serverservice.edb|masterservice.edb|6260B5C4|"
if l_0_4:find(l_0_1, 1, true) then
  return mp.INFECTED
end
if l_0_0:find("\\webcache\\", 1, true) or l_0_0:find("\\system32\\logfiles", 1, true) or l_0_0:find("windows\\cryptoguard", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

