-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20794.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = l_0_0.command_line
bm_AddRelatedFileFromCommandLine(l_0_1)
add_parents()
local l_0_2 = (mp.GetExecutablesFromCommandLine)(l_0_1)
for l_0_6,l_0_7 in ipairs(l_0_2) do
  l_0_7 = (mp.ContextualExpandEnvironmentVariables)(l_0_7)
  if (sysio.IsFileExists)(l_0_7) and (string.sub)(l_0_7, -3) == ".js" then
    (bm.add_threat_file)(l_0_7)
  end
end
return mp.INFECTED

