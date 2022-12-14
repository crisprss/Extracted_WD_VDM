-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22198.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("5beb7efe-fd9a-4556-801d-275e5ffc04cc") then
  return mp.CLEAN
end
-- DECOMPILER ERROR at PC35: Unhandled construct in 'MakeBoolean' P3

if (not (mp.get_mpattribute)("Nscript:Type_js") and not (mp.get_mpattribute)("Nscript:Type_vbs")) or (mp.get_mpattribute)("Lua:ProgrammingLangFileExtension") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_1 = (string.sub)(l_0_0, -5)
local l_0_2 = (string.match)(l_0_0, "(%.[^%.]+)$")
if l_0_2 == ".psd1" or l_0_2 == ".psm1" or l_0_1 == "s1xml" or l_0_2 == ".ps1" or l_0_2 == ".psrc" or l_0_2 == ".pssc" or l_0_1 == "cdxml" or l_0_2 == ".testpasses" then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_3 = 0
  local l_0_4 = (mp.get_mpattributevalue)("RPF:TobeetJs:Probability")
  if l_0_4 ~= nil and l_0_4 >= 90 then
    l_0_3 = 1
  end
  if l_0_3 == 0 then
    l_0_4 = (mp.get_mpattributevalue)("RPF:Bampa:Probability")
    if l_0_4 ~= nil and l_0_4 >= 99 then
      l_0_3 = 1
    end
  end
  if l_0_3 == 0 then
    l_0_4 = (mp.get_mpattributevalue)("RPF:Mampa:Probability")
    if l_0_4 ~= nil and l_0_4 >= 95 then
      l_0_3 = 1
    end
  end
  if l_0_3 == 1 then
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
    ;
    (mp.set_mpattribute)("MpDisableCaching")
    ;
    (MpCommon.AppendPersistContext)((mp.getfilename)(), "enghipscpy:blockexecution:5beb7efe-fd9a-4556-801d-275e5ffc04cc", 0)
    return mp.CLEAN
  end
end
do
  if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, ">%[msilres") then
    (mp.set_mpattribute)("LUA:InsideMSILRES")
    return mp.CLEAN
  end
  if (mp.get_mpattribute)("LUA:InsideMSILRES") then
    return mp.CLEAN
  end
  if (mp.get_mpattribute)("AsrMatch5beb7efe") == false and (MpCommon.QueryPersistContext)(l_0_0, "enghipscpy:blockexecution:5beb7efe-fd9a-4556-801d-275e5ffc04cc") == false then
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
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  local l_0_5 = ((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)):lower()
  if l_0_5 == nil then
    return mp.CLEAN
  end
  local l_0_6 = l_0_5:match("[^\\]+$")
  if l_0_6 == nil then
    return mp.CLEAN
  end
  local l_0_7 = {}
  l_0_7["cscript.exe"] = ""
  l_0_7["wscript.exe"] = ""
  l_0_7["winword.exe"] = ""
  l_0_7["powerpnt.exe"] = ""
  l_0_7["excel.exe"] = ""
  -- DECOMPILER ERROR at PC385: Unhandled construct in 'MakeBoolean' P3

  if (l_0_6 ~= nil and l_0_7[l_0_6]) or (mp.get_mpattribute)("BM_WSCRIPT_EXE") then
    return mp.INFECTED
  end
  return mp.CLEAN
end

