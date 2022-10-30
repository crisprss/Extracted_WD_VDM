-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1720.luac 

-- params : ...
-- function num : 0
local l_0_8 = nil
if (this_sigattrlog[7]).matched and (this_sigattrlog[7]).p2 then
  local l_0_0, l_0_3 = nil, nil
  local l_0_1, l_0_4 = nil, nil
  local l_0_2, l_0_5 = 2
  l_0_1 = 1
  local l_0_6 = nil
else
  do
    do return mp.CLEAN end
    if l_0_3 == nil or l_0_0 == nil then
      return mp.CLEAN
    end
    -- DECOMPILER ERROR at PC37: Confused about usage of register: R2 in 'UnsetPending'

    local l_0_7 = nil
    if (string.match)(l_0_3, "\\([^\\]+)$") == nil then
      return mp.CLEAN
    end
    local l_0_9 = nil
    local l_0_10 = nil
    local l_0_11 = nil
    if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil or ((bm.get_current_process_startup_info)()).command_line == nil then
      return mp.CLEAN
    end
    local l_0_12 = nil
    -- DECOMPILER ERROR at PC67: Confused about usage of register: R7 in 'UnsetPending'

    local l_0_13 = nil
    local l_0_14 = nil
    local l_0_15 = nil
    AppendToRollingQueue("OfficeGen" .. ((bm.get_current_process_startup_info)()).ppid, l_0_8, l_0_10 .. "|" .. l_0_7 .. "|" .. l_0_9, 3600, 10, 0)
    local l_0_16 = nil
    -- DECOMPILER ERROR at PC83: Confused about usage of register: R10 in 'UnsetPending'

    local l_0_17 = nil
    if GetRollingQueue("OfficeGen" .. ((bm.get_current_process_startup_info)()).ppid) == nil or type(GetRollingQueue("OfficeGen" .. ((bm.get_current_process_startup_info)()).ppid)) ~= "table" then
      return mp.CLEAN
    end
    local l_0_18 = nil
    local l_0_19 = nil
    for l_0_23,l_0_24 in ipairs(GetRollingQueue("OfficeGen" .. ((bm.get_current_process_startup_info)()).ppid)) do
      local l_0_20, l_0_21, l_0_22, l_0_23 = , {doc = bm_AddRelatedFileFromCommandLine(l_0_15), cmd = l_0_15, 
detectionLog = {}
}, nil
      -- DECOMPILER ERROR at PC107: Confused about usage of register: R21 in 'UnsetPending'

      l_0_23 = explode(R21_PC107.value, "|")
      ;
      (table.insert)(l_0_22.detectionLog, {name = R21_PC107.key, ppid = l_0_23[2], timestamp = R21_PC107.insert_time, file = l_0_23[3]})
      -- DECOMPILER ERROR at PC125: Overwrote pending register: R3 in 'AssignReg'

    end
    -- DECOMPILER ERROR at PC134: Confused about usage of register: R15 in 'UnsetPending'

    if l_0_12 <= l_0_10 then
      (bm.add_related_string)("officegen", json_encode(l_0_22), bm.RelatedStringBMReport)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

