-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4060.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2, l_0_3, l_0_10, l_0_11, l_0_12, l_0_13, l_0_14, l_0_15 = this_sigattrlog[2]
    end
    -- DECOMPILER ERROR at PC23: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC26: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      if isParentPackageManager(l_0_1.ppid) then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC35: Confused about usage of register: R0 in 'UnsetPending'

      local l_0_4 = nil
      for l_0_8,l_0_9 in ipairs((mp.GetExecutablesFromCommandLine)(l_0_1.utf8p2)) do
        local l_0_5 = nil
        -- DECOMPILER ERROR at PC43: Confused about usage of register: R6 in 'UnsetPending'

        -- DECOMPILER ERROR at PC49: Confused about usage of register: R6 in 'UnsetPending'

        if (sysio.IsFileExists)(l_0_13) then
          (bm.add_related_file)(l_0_13)
        end
      end
    end
    do
      if l_0_4 ~= nil and l_0_4.ppid ~= nil then
        TrackPidAndTechnique(l_0_4.ppid, "T1053.003", "Persistence")
      end
      reportRelatedBmHits()
      addRelatedProcess()
      return mp.INFECTED
    end
  end
end

