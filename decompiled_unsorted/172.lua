-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/172.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1 = nil
do
  if (bm.get_current_process_startup_info)() ~= nil and ((bm.get_current_process_startup_info)()).ppid ~= nil then
    local l_0_2 = nil
    if (mp.GetProcessCommandLine)(((bm.get_current_process_startup_info)()).ppid) ~= nil then
      l_0_1 = (string.lower)((mp.GetProcessCommandLine)(((bm.get_current_process_startup_info)()).ppid))
      if (string.find)(l_0_1, "installhostids.ps1", 1, true) then
        return mp.CLEAN
      end
    end
  end
  return mp.INFECTED
end

