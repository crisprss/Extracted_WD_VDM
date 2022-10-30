-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/107.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_5 = nil
  else
  end
  if not (this_sigattrlog[2]).matched or not ((sysio.GetLastResult)()).Success then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R0 in 'UnsetPending'

  if (sysio.GetFileSize)((this_sigattrlog[2]).utf8p1) <= 65536 or not 65536 then
    local l_0_7 = nil
    if not ((sysio.GetLastResult)()).Success then
      return mp.CLEAN
    end
    local l_0_8 = nil
    if GetRollingQueueKeyValue("GPO-ScheduledTasks-LocalPath-Current", l_0_7) == (crypto.Sha256Buffer)((sysio.ReadFile)((this_sigattrlog[2]).utf8p1, 0, (sysio.GetFileSize)((this_sigattrlog[2]).utf8p1)), 0, (sysio.GetFileSize)((this_sigattrlog[2]).utf8p1)) then
      return mp.CLEAN
    end
    local l_0_9, l_0_10, l_0_11, l_0_12, l_0_13 = , nil, nil, nil
    local l_0_14 = nil
    local l_0_18, l_0_19 = nil, {}
    if not pcall(parseXML, l_0_9, function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1 , upvalues : l_0_11, l_0_12, l_0_13, l_0_14, l_0_15
  if l_2_2 and l_2_1 then
    error("unexpected text in tag with attributes")
  else
    if not l_0_11 then
      if l_2_0 == "Task" or l_2_0 == "ImmediateTask" then
        l_0_11 = 1
        l_0_12 = l_2_1.uid or ""
        l_0_13 = l_2_1.changed or ""
      else
        if l_2_0 == "TaskV2" or l_2_0 == "ImmediateTaskV2" then
          l_0_11 = 2
          l_0_12 = l_2_1.uid or ""
          l_0_13 = l_2_1.changed or ""
        end
      end
    else
      -- DECOMPILER ERROR at PC51: Unhandled construct in 'MakeBoolean' P1

      if l_0_11 == 1 and l_2_0 == "Properties" then
        l_0_14 = l_2_1.appName
        l_0_15 = l_2_1.args
      end
    end
  end
  if l_0_11 == 2 then
    if l_2_0 == "Command" then
      l_0_14 = l_2_2
    else
      if l_2_0 == "Arguments" then
        l_0_15 = l_2_2
      end
    end
  end
end
, function(l_3_0)
  -- function num : 0_2 , upvalues : l_0_11, l_0_17, l_0_12, l_0_13, l_0_14, l_0_15
  if not l_0_11 then
    return 
  end
  -- DECOMPILER ERROR at PC16: Unhandled construct in 'MakeBoolean' P1

  if l_0_11 == 1 and (l_3_0 == "Task" or l_3_0 == "ImmediateTask") then
    l_0_17(l_0_12, l_0_13, l_0_14, l_0_15)
    l_0_14 = nil
    l_0_11 = nil
    l_0_12 = nil
  end
  if l_0_11 == 2 then
    if l_3_0 == "Exec" then
      l_0_17(l_0_12, l_0_13, l_0_14, l_0_15)
      l_0_14 = nil
    else
      if l_3_0 == "TaskV2" or l_3_0 == "ImmediateTaskV2" then
        l_0_11 = nil
        l_0_12 = nil
      end
    end
  end
end
) then
      (bm.add_related_string)("GPO-scheduledtasks-error", R17_PC96, bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    local l_0_20 = function(l_1_0, l_1_1, l_1_2, l_1_3)
  -- function num : 0_0 , upvalues : l_0_r9
  if not l_1_2 and not l_1_3 then
    return 
  end
  local l_1_4 = string.format
  local l_1_5 = "%s %s"
  l_1_4 = l_1_4(l_1_5, l_1_2 or "", l_1_3 or "")
  l_1_5 = sysio
  l_1_5 = l_1_5.CommandLineScan
  l_1_5 = l_1_5(l_1_4, 0)
  for l_1_11,i_2 in ipairs((mp.GetExecutablesFromCommandLine)(l_1_4)) do
    local l_1_8 = nil
    if (sysio.IsFileExists)(i_2) then
      (bm.add_related_file)(i_2)
    end
  end
  l_1_4 = (MpCommon.NormalizeString)(l_1_4, "CmdLineNormalizationStandard")
  l_1_4 = l_1_4 and (crypto.Sha256Buffer)(l_1_4, 0, #l_1_4) or "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  local l_1_12 = nil
  local l_1_13 = l_0_r9
  local l_1_14 = #l_0_r9 + 1
  do
    l_1_13[l_1_14] = {task_uid = (crypto.Sha1Buffer)(l_1_0, 0, #l_1_0), changed_time = l_1_1, cmdline = l_1_4, scan_result = l_1_5 or false}
    -- DECOMPILER ERROR at PC76: freeLocal<0 in 'ReleaseLocals'

  end
end

    do
      local l_0_21 = nil
      -- DECOMPILER ERROR at PC106: Overwrote pending register: R17 in 'AssignReg'

      -- DECOMPILER ERROR at PC107: Overwrote pending register: R17 in 'AssignReg'

      R17_PC96 = R17_PC96((l_0_7:lower()):match(R17_PC96), 0, #(l_0_7:lower()):match(R17_PC96))
      R17_PC96 = bm
      R17_PC96 = R17_PC96.add_related_string
      R17_PC96("GPO-scheduledtasks-info", json_encode({gpo_guid = R17_PC96, command_lines = l_0_19}), bm.RelatedStringBMReport)
      R17_PC96 = AppendToRollingQueue
      R17_PC96("GPO-ScheduledTasks-LocalPath-Current", l_0_7, l_0_10, 604800, 300, 1)
      R17_PC96 = mp
      R17_PC96 = R17_PC96.INFECTED
      do return R17_PC96 end
      -- DECOMPILER ERROR at PC134: freeLocal<0 in 'ReleaseLocals'

    end
  end
end

