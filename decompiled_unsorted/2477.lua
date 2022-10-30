-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2477.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0.command_line ~= nil then
    local l_0_1 = "|.exe|.dll|docx|.doc|docm|.dot|dotm|.xls|xlsm|.xlt|xltm|.ppt|pptx|.pps|ppsm|.zip|.pdf|.rtf|"
    pcall(bm_AddRelatedFileFromCommandLine, l_0_0.command_line, l_0_1, 4, 3)
  end
  AddResearchData(l_0_0.ppid, true)
  return mp.INFECTED
end

