-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/691.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE and l_0_0 ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if (mp.get_mpattribute)("SCRIPT:LoadWin32importsfromMacro") or (mp.get_mpattribute)("MHSTR:LoadWin32importsfromMacro") or (MpCommon.QueryPersistContext)(l_0_1, "enghipscpy:MHSTRLoadWin32importsfromMacroInside") then
  local l_0_2 = (string.lower)(l_0_1)
  if (string.find)(l_0_2, ">%[msilres", 1, true) then
    (mp.set_mpattribute)("LUA:InsideMSILRES")
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files\\microsoft office\\", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files (x86)\\microsoft office\\", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files\\windowsapps\\microsoft.office.desktop.excel", 1, true) then
    return mp.CLEAN
  end
  if (string.find)(l_0_2, "\\program files (x86)\\windowsapps\\microsoft.office.desktop.excel", 1, true) then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("MpDisableCaching")
  local l_0_3 = GetCtxOfficeProc()
  if l_0_3 ~= "productivity" and l_0_3 ~= "productivity2" then
    return mp.CLEAN
  end
  local l_0_4 = nil
  local l_0_5 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  do
    do
      if l_0_5 ~= nil then
        local l_0_6 = (mp.GetProcessCommandLine)(l_0_5)
        if l_0_6 ~= nil and (string.len)(l_0_6) ~= 0 then
          l_0_4 = (string.match)(l_0_6, ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          if l_0_4 == nil or (string.len)(l_0_4) == 0 then
            l_0_4 = (string.match)(l_0_6, ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            if l_0_4 == nil or (string.len)(l_0_4) == 0 then
              l_0_4 = (string.match)(l_0_6, ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              if l_0_4 == nil or (string.len)(l_0_4) == 0 then
                l_0_4 = (string.match)(l_0_6, ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                if l_0_4 == nil or (string.len)(l_0_4) == 0 then
                  l_0_4 = (string.match)(l_0_6, ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                  if l_0_4 == nil or (string.len)(l_0_4) == 0 then
                    l_0_4 = (string.match)(l_0_6, ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                  end
                end
              end
            end
          end
        end
      end
      if l_0_4 ~= nil and (sysio.IsPathAVExcluded)(l_0_4, false) == true then
        return mp.CLEAN
      end
      if l_0_0 == mp.SCANREASON_ONOPEN then
        (mp.SetHipsRule)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
        return mp.BLOCKEXECUTION
      else
        ;
        (mp.SetHipsRule)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b")
        return mp.BLOCKACCESS
      end
      return mp.CLEAN
    end
  end
end

