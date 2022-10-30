-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/688.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if (string.len)(l_0_2) < 4 or (string.len)(l_0_1) < 20 then
  return mp.CLEAN
end
local l_0_3 = ((string.sub)(l_0_2, -4)):match("%.(%w+)$")
if l_0_3 == nil then
  return mp.CLEAN
end
if not IsEmailCachePath(l_0_1) and (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "outlook.exe" then
  return mp.CLEAN
end
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
  (mp.set_mpattribute)("//Lua:ContextualDropExecutableByEmailClient.B")
  ;
  (mp.set_mpattribute)("MpForceScanArchives")
else
  if IsSuspiciousFileExt(l_0_3) then
    if l_0_3 == "dll" or l_0_3 == "js" or l_0_3 == "exe" then
      local l_0_4 = (mp.ContextualExpandEnvironmentVariables)("%userprofile%")
      l_0_4 = (l_0_4 == nil and "" or l_0_4):lower()
      local l_0_5 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
      l_0_5 = (l_0_5 == nil and "" or l_0_5):lower()
      l_0_5 = (MpCommon.PathToWin32Path)(l_0_5)
      if (string.find)(l_0_5, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.dll") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\assembly\\te?mp\\[^\\]+\\.+%.exe") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\microsoft\\office\\[%d%.]+\\wef\\.+%.js") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\roaming\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\roaming\\imanage\\work\\dll\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\roaming\\imanage\\work\\chromium\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\imanage\\work\\plug_ins\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\imanage\\work\\dll\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\imanage\\work\\chromium\\", 1, true) ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, l_0_4 .. "\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "%a:\\users\\local_[^\\]+\\inetcache\\ie\\[^\\]+\\[^\\]+%.js") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, "appdata\\local\\microsoft\\windows\\inetcache\\ie\\[^\\]+\\.+%.js") ~= nil then
        return mp.CLEAN
      end
      if (string.find)(l_0_5, ".:\\windows\\microsoft%.net\\assembly\\gac_msil\\[^\\]+\\[^\\]+\\.+%.dll") ~= nil then
        return mp.CLEAN
      end
    end
    do
      ;
      (mp.set_mpattribute)("MpDisableCaching")
      if not (MpCommon.QueryPersistContext)((mp.getfilename)(), l_0_0) then
        (MpCommon.AppendPersistContext)((mp.getfilename)(), l_0_0, 0)
      end
      ;
      (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
      do return mp.BLOCKACCESS end
      return mp.CLEAN
    end
  end
end

