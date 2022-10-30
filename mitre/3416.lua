-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3416.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil then
    local l_0_2 = nil
    local l_0_3 = nil
    local l_0_4 = ((string.lower)(l_0_0)):match("msdt:[-/]id[%s]+([^%s]+)")
    if ({printerdiagnostic = true, audioplaybackdiagnostic = true, networkdiagnosticsnetworkadapter = true, networkdiagnosticsweb = true, devicediagnostic = true, networkdiagnosticsinbound = true})[l_0_4] then
      return mp.CLEAN
    end
    if l_0_3:find("-ep%s+t?s?controlpanel") then
      return mp.CLEAN
    end
    if l_0_3:find("-context", 1, true) then
      return mp.CLEAN
    end
    if l_0_3:find("systemsetting", 1, true) then
      return mp.CLEAN
    end
    local l_0_5 = nil
    do
      if ((bm.get_current_process_startup_info)()).command_line ~= nil then
        local l_0_6 = nil
        if ((string.lower)(((bm.get_current_process_startup_info)()).command_line)):find("\\systemsettings.exe", 1, true) then
          return mp.CLEAN
        end
      end
      if l_0_4 == "pcwdiagnostic" then
        if l_0_3:find("ms-msdt:[-/]d%s+pcwdiagnostic$") then
          return mp.CLEAN
        end
        TrackPidAndTechniqueBM("BM", "T1218", "msdt_pcwdiag_source")
        local l_0_7 = nil
        local l_0_8 = nil
        if (sysio.GetProcessFromFileName)((mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\sdiagnhost.exe")) ~= nil and #(sysio.GetProcessFromFileName)((mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\sdiagnhost.exe")) > 0 then
          for l_0_12,l_0_13 in pairs((sysio.GetProcessFromFileName)((mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\sdiagnhost.exe"))) do
            local l_0_9 = nil
            -- DECOMPILER ERROR at PC118: Confused about usage of register: R11 in 'UnsetPending'

            TrackPidAndTechniqueBM((string.format)("pid:%d,ProcessStart:%u", R11_PC118.pid, R11_PC118.starttime), "T1218", "msdt_pcwdiag_target")
          end
        end
      end
      do
        do
          l_0_8 = mp
          l_0_8 = l_0_8.INFECTED
          do return l_0_8 end
          l_0_3 = mp
          l_0_3 = l_0_3.CLEAN
          return l_0_3
        end
      end
    end
  end
end

