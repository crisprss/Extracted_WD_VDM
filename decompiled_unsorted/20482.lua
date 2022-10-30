-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20482.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
    local l_0_3 = nil
    if (sysio.GetFileSize)(l_0_0) > 100000000 then
      local l_0_4 = nil
      ;
      (bm.request_SMS)(((bm.get_current_process_startup_info)()).ppid, "M")
      ;
      (bm.add_action)("SmsAsyncScanEvent", 1)
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

