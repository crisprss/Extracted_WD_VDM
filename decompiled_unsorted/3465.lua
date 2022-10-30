-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3465.luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
if peattributes.isappcontainer or peattributes.resource_only_dll or peattributes.no_ep or peattributes.dmg_entrypoint or peattributes.dmg_not_executable_image or peattributes.dmg_truncated then
  return mp.CLEAN
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
local l_0_6, l_0_7 = pcall(mp.get_parent_filehandle)
if l_0_6 then
  l_0_6 = pcall(mp.get_filesize_by_handle, l_0_7)
  if l_0_6 then
    return mp.CLEAN
  end
end
local l_0_8 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_8, 1, 1) ~= "c" then
  return mp.CLEAN
end
if (string.find)(l_0_8, "program files", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_9 = (string.lower)((mp.getfilename)(mp.FILEPATH_QUERY_FNAME))
if l_0_9 == nil or (string.len)(l_0_9) > 16 then
  return mp.CLEAN
end
local l_0_10 = (mp.getfilesize)()
if l_0_10 < 256 or l_0_10 > 1048576 then
  return mp.CLEAN
end
if l_0_9 == "goopdate.dll" then
  return mp.INFECTED
end
if l_0_9 == "mpsvc.dll" then
  return mp.INFECTED
end
if l_0_9 == "mpclient.dll" then
  return mp.INFECTED
end
if l_0_9 == "iphlpapi.dll" then
  return mp.INFECTED
end
if l_0_9 == "libcef.dll" then
  return mp.INFECTED
end
if l_0_9 == "activeds.dll" then
  return mp.INFECTED
end
if l_0_9 == "qclite.dll" then
  return mp.INFECTED
end
if l_0_9 == "msimg32.dll" then
  return mp.INFECTED
end
if l_0_9 == "aclmgr.dll" then
  return mp.INFECTED
end
if l_0_9 == "rcdll.dll" then
  return mp.INFECTED
end
if l_0_9 == "sqlite3.dll" then
  return mp.INFECTED
end
if l_0_9 == "iscsiexe.dll" then
  return mp.INFECTED
end
if l_0_9 == "iviewers.dll" then
  return mp.INFECTED
end
if l_0_9 == "mscoree.dll" then
  return mp.INFECTED
end
if l_0_9 == "version.dll" then
  return mp.INFECTED
end
if l_0_9 == "cryptsp.dll" then
  return mp.INFECTED
end
if l_0_9 == "msedgeupdate.dll" then
  return mp.INFECTED
end
if l_0_9 == "midlrtmd.dll" then
  return mp.INFECTED
end
return mp.CLEAN

