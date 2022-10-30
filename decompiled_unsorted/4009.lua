-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4009.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  end
  -- DECOMPILER ERROR at PC8: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0 then
    return mp.CLEAN
  end
  local l_0_1 = nil
  local l_0_2 = (bm.get_current_process_startup_info)()
  while 1 do
    if 3 > 0 then
      if not l_0_2 or not l_0_2.ppid then
        return mp.CLEAN
      end
      do
        local l_0_3, l_0_4 = , (bm.get_process_relationships)(l_0_2.ppid)
        for l_0_8,l_0_9 in ipairs(l_0_4) do
          local l_0_5 = nil
          -- DECOMPILER ERROR at PC35: Confused about usage of register: R9 in 'UnsetPending'

          if R9_PC35 and R9_PC35.ppid then
            (bm.trigger_sig)("BM_WebServerFileDrop", l_0_1, R9_PC35.ppid)
          end
        end
        l_0_2 = (mp.GetParentProcInfo)(l_0_2.ppid)
        l_0_3 = l_0_3 - 1
        -- DECOMPILER ERROR at PC54: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC54: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  return mp.CLEAN
end

