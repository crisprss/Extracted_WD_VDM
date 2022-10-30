-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1264.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
local l_0_1 = tonumber((string.match)(l_0_0.ppid, "pid:(%w+),ProcessStart:%w+"))
if l_0_1 ~= nil and l_0_1 < 12 then
  return mp.INFECTED
end
return mp.CLEAN

