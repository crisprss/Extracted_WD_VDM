-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1073.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if l_0_0.OriginalFilename ~= "WerFaultSecure.exe" or l_0_0.InternalName ~= "WerFaultSecure" or l_0_0.FileDescription ~= "Windows Fault Reporting" then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") or l_0_0.CompanyName ~= "Microsoft Corporation" then
  return mp.CLEAN
end
local l_0_1 = (versioning.GetOsVersion)()
if l_0_1 <= 393220 then
  return mp.CLEAN
end
local l_0_2 = (pe.get_fixedversioninfo)()
local l_0_3 = (crypto.shr64)(l_0_2.FileVersion, 48)
if l_0_3 >= 10 then
  return mp.CLEAN
end
local l_0_4 = nil
l_0_4 = (mp.getfilename)()
if l_0_4 == nil then
  return mp.CLEAN
end
l_0_4 = (MpCommon.PathToWin32Path)(l_0_4)
;
(MpCommon.SetOriginalFileName)(l_0_4, "VulnWerFaultSecureExe.exe")
return mp.INFECTED

