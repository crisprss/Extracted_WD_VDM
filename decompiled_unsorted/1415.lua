-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1415.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC19: Confused about usage of register: R0 in 'UnsetPending'

  if l_0_0 == nil or #l_0_0 < 12 then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC27: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_3 = nil
  local l_0_4 = (string.sub)(l_0_0, -4)
  if ({[".exe"] = true, [".scr"] = true, [".dll"] = true, [".com"] = true, [".bat"] = true, [".cmd"] = true, [".cpl"] = true, [".ocx"] = true, [".ps1"] = true, [".vbs"] = true, [".jse"] = true, [".vbe"] = true, [".wsf"] = true, [".wsh"] = true})[l_0_4] == nil or (string.sub)(l_0_3, -3) ~= ".js" then
    return mp.CLEAN
  end
  local l_0_5 = nil
  if (bm.get_current_process_startup_info)() == nil or ((bm.get_current_process_startup_info)()).ppid == nil then
    return mp.CLEAN
  end
  local l_0_6 = nil
  if tonumber((string.match)(((bm.get_current_process_startup_info)()).ppid, "pid:(%w+),ProcessStart:%w+")) ~= nil and tonumber((string.match)(((bm.get_current_process_startup_info)()).ppid, "pid:(%w+),ProcessStart:%w+")) <= 4 then
    (MpCommon.AppendPersistContext)(l_0_3, "SystemDropToUserProfile.A", 1800)
    return mp.INFECTED
  end
  return mp.CLEAN
end

