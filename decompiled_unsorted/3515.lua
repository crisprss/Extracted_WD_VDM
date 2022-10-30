-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3515.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_1 = (MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
if l_0_1 == nil or l_0_0 == nil then
  return mp.CLEAN
end
if l_0_1 == "" or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_2 = l_0_1 .. "\\" .. l_0_0
local l_0_3 = (MpCommon.GetOriginalFileName)(l_0_2)
if l_0_3 ~= "regsvr32.exe" and l_0_3 ~= "rundll32.exe" and l_0_0 ~= "regsvr32.exe" and l_0_0 ~= "rundll32.exe" then
  return mp.CLEAN
end
local l_0_4 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (MpCommon.QueryPersistContext)(l_0_4, "DllDroppedByExcel") or (MpCommon.QueryPersistContext)(l_0_4, "CabDroppedByExcel") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/ExcelDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/ExcelDropRundllLoad")
    end
  end
end
local l_0_5 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if (MpCommon.QueryPersistContext)(l_0_5, "DllDroppedByWord") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/WordDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/WordDropRundllLoad")
    end
  end
end
if (MpCommon.QueryPersistContext)(l_0_5, "DllDroppedByPowerShell") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/PowershellDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/PowershellDropRundllLoad")
    end
  end
end
if (MpCommon.QueryPersistContext)(l_0_5, "DllDroppedByWscript") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/WscriptDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/WscriptDropRundllLoad")
    end
  end
end
if (MpCommon.QueryPersistContext)(l_0_5, "DllDroppedByCscript") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/CscriptDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/CscriptDropRundllLoad")
    end
  end
end
if (MpCommon.QueryPersistContext)(l_0_5, "DllDroppedByCurl") then
  if l_0_0 == "regsvr32.exe" or l_0_3 ~= nil and l_0_3 == "regsvr32.exe" then
    (mp.set_mpattribute)("Lua:Context/CurlDropRegsvrLoad")
  else
    if l_0_0 == "rundll32.exe" or l_0_3 ~= nil and l_0_3 == "rundll32.exe" then
      (mp.set_mpattribute)("Lua:Context/CurlDropRundllLoad")
    end
  end
end
return mp.CLEAN

