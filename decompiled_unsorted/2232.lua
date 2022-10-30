-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2232.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0.command_line ~= nil and l_0_0.ppid ~= nil then
  bm_AddRelatedFileFromCommandLine(l_0_0.command_line, nil, nil, 4)
  AddResearchData(l_0_0.ppid, true)
end
return mp.INFECTED

