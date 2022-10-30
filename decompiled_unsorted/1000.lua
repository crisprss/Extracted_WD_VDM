-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1000.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
local l_0_2 = (string.match)(l_0_1, "[^ ]+%s->%s-\\\\%.\\pipe\\[^ ]+$")
if l_0_2 ~= nil then
  if l_0_2 ~= (string.match)(l_0_1, "[^ ]+%s->%s-\\\\%.\\pipe\\chrome[^ ]+$") then
    return mp.INFECTED
  end
  return mp.CLEAN
end
return mp.CLEAN

