-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1571.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_11 = nil
  else
  end
  -- DECOMPILER ERROR at PC12: Confused about usage of register: R0 in 'UnsetPending'

  if this_sigattrlog[2] then
    local l_0_4 = nil
    local l_0_5 = nil
    for l_0_9,l_0_10 in ipairs((mp.GetExecutablesFromCommandLine)((this_sigattrlog[2]).utf8p2)) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC23: Confused about usage of register: R7 in 'UnsetPending'

      if (sysio.IsFileExists)(R7_PC23) then
        (mp.ReportLowfi)(R7_PC23, 385992994)
      end
    end
  end
  do
    l_0_5 = bm
    l_0_5 = l_0_5.get_current_process_startup_info
    l_0_5 = l_0_5()
    local l_0_12 = nil
    l_0_12 = bm
    l_0_12 = l_0_12.request_SMS
    l_0_12(l_0_5.ppid, "H")
    l_0_12 = bm
    l_0_12 = l_0_12.add_action
    l_0_12("SmsAsyncScanEvent", 1)
    l_0_12 = triggerMemoryScanOnProcessTree
    l_0_12(true, false, "EMS", 5000, "Behavior:Win32/DllMsiexecInject.A")
    l_0_12 = mp
    l_0_12 = l_0_12.INFECTED
    return l_0_12
  end
end

