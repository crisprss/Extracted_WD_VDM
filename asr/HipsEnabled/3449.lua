-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3449.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
local l_0_1 = (mp.GetScanSource)()
if l_0_1 ~= mp.SCANSOURCE_IOAV_WEB then
  return mp.CLEAN
end
if not IsWebmailDownloadURL() then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if (string.len)(l_0_2) < 4 then
  return mp.CLEAN
end
local l_0_3 = ((string.sub)(l_0_2, -4)):match("%.(%w+)$")
if l_0_3 == nil then
  return mp.CLEAN
end
if IsSuspiciousFileExt(l_0_3) then
  (mp.set_mpattribute)("MpDisableCaching")
  if not (MpCommon.QueryPersistContext)((mp.getfilename)(), l_0_0) then
    (MpCommon.AppendPersistContext)((mp.getfilename)(), l_0_0, 0)
  end
  ;
  (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
else
  if IsArchiveFileExt(l_0_3) then
    (mp.set_mpattribute)("MpDisableCaching")
    if (mp.get_mpattribute)("Lua:ZipHasEncryptedFileWithExeExtension") or (mp.get_mpattribute)("Lua:RarHasEncryptedFileWithExeExtension") then
      if not (MpCommon.QueryPersistContext)((mp.getfilename)(), l_0_0) then
        (MpCommon.AppendPersistContext)((mp.getfilename)(), l_0_0, 0)
      end
      ;
      (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
      return mp.BLOCKACCESS
    end
    ;
    (MpCommon.AppendPersistContext)((mp.getfilename)(), "ContextualDropEncryptedArchiveByEmail", 300)
    if (mp.getfilesize)() > 10485760 then
      return mp.CLEAN
    end
    ;
    (mp.set_mpattribute)("//Lua:ContextualDropExecutableFromWebmail.B")
    ;
    (mp.set_mpattribute)("MpForceScanArchives")
  end
end
return mp.CLEAN

