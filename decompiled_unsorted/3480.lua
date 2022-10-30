-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3480.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH))
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
local l_0_4 = (mp.getfilesize)()
-- DECOMPILER ERROR at PC156: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC156: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC156: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC156: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC156: Unhandled construct in 'MakeBoolean' P3

if ((l_0_1 == "keyvaultfx.exe" and (string.find)(l_0_2, "\\netlock\\", 1, true)) or l_0_1 ~= "netlock.exe" or l_0_1 ~= "ptlite10.exe" or not (string.find)(l_0_1, "rufus", 1, true) or not (string.find)(l_0_2, "windows\\winsxs", 1, true) or not (string.find)(l_0_1, "virtualbench.exe", 1, true) or l_0_1 ~= "start.exe" or (not (string.find)(l_0_3, "rtpkcs11ecp.dll", 1, true) and not (string.find)(l_0_3, "libssl-1_1.dll", 1, true) and not (string.find)(l_0_3, "rtengine.dll", 1, true) and not (string.find)(l_0_3, "libcrypto-1_1.dll", 1, true)) or l_0_4 < 3000000) then
  return mp.CLEAN
end
local l_0_5 = (sysio.GetFileAttributes)((mp.getfilename)())
local l_0_6 = (mp.bitand)(l_0_5, 2)
if l_0_6 == 0 then
  (mp.set_mpattribute)("Lua:Context/DllOnMountedDrive")
  if l_0_0:find("^\\device\\cdrom") ~= nil then
    (mp.set_mpattribute)("Lua:Context/MaybeDllSideLoadingOnMountedDrive")
  end
else
  ;
  (mp.set_mpattribute)("Lua:Context/HiddenDllOnMountedDrive")
  if l_0_0:find("^\\device\\cdrom") ~= nil then
    (mp.set_mpattribute)("Lua:Context/MaybeHiddenDllSideLoadingOnMountedDrive")
  end
end
return mp.CLEAN

