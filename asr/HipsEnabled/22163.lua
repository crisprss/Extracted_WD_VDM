-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22163.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("5beb7efe-fd9a-4556-801d-275e5ffc04cc") then
  return mp.INFECTED
end
-- DECOMPILER ERROR at PC35: Unhandled construct in 'MakeBoolean' P3

if (not (mp.get_mpattribute)("Nscript:Type_js") and not (mp.get_mpattribute)("Nscript:Type_vbs")) or (mp.get_mpattribute)("Lua:ProgrammingLangFileExtension") then
  return mp.CLEAN
end
local l_0_0 = (MpCommon.PathToWin32Path)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)))
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_1 = (string.sub)(l_0_0, -5)
local l_0_2 = (string.sub)(l_0_1, -4)
if l_0_1 == ".psd1" or l_0_1 == ".psm1" or l_0_1 == "s1xml" or l_0_2 == ".ps1" or l_0_1 == ".psrc" or l_0_1 == ".pssc" or l_0_1 == "cdxml" then
  return mp.CLEAN
end
if (string.find)(l_0_0, ">%[msilres") then
  (mp.set_mpattribute)("LUA:InsideMSILRES")
  return mp.CLEAN
end
if (mp.IsTrustedFile)(false) == true then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\appdata\\roaming\\microsoft\\office\\16.0\\[^\\]+\\proofing\\") then
  return mp.CLEAN
else
  if (string.find)(l_0_0, "\\program files[^\\]*\\microsoft office\\root\\office%d+\\%d+\\%a+naivebayescommandranker.txt") then
    return mp.CLEAN
  else
    if (string.find)(l_0_0, "\\windows\\imecache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs") then
      return mp.CLEAN
    else
      if (string.find)(l_0_0, "\\windows\\ccmcache\\[^\\]+\\appdeploytoolkit\\appdeploytoolkitmain.cs") then
        return mp.CLEAN
      end
    end
  end
end
if (string.find)(l_0_0, "\\windowspowershell\\v1.0\\modules\\", 1, true) then
  return mp.CLEAN
else
  if (string.find)(l_0_0, "\\eceagentservice\\[^\\]+\\[^\\]+%.psd1$") then
    return mp.CLEAN
  end
end
local l_0_3 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = l_0_3:match("[^\\]+$")
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = {}
l_0_5["cscript.exe"] = ""
l_0_5["wscript.exe"] = ""
l_0_5["winword.exe"] = ""
l_0_5["powerpnt.exe"] = ""
l_0_5["excel.exe"] = ""
l_0_5["powershell.exe"] = ""
if l_0_5[l_0_4] or (mp.get_mpattribute)("BM_CSCRIPT_EXE") or (mp.get_mpattribute)("BM_POWERSHELL_EXE") or (mp.get_mpattribute)("BM_POWERSHELL_ISE_EXE") or (mp.get_mpattribute)("BM_WSCRIPT_EXE") then
  return mp.INFECTED
end
return mp.CLEAN

