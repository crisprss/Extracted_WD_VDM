-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21045.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
do
  if l_0_0 ~= nil and l_0_0.command_line ~= nil then
    local l_0_1 = (string.lower)(l_0_0.command_line)
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 2)
  end
  reportSessionInformation()
  sms_untrusted_process()
  local l_0_2 = mp.CLEAN
  if (this_sigattrlog[2]).matched then
    l_0_2 = reportGenericRansomware("gend_ransom_meta")
  else
    if (this_sigattrlog[3]).matched then
      l_0_2 = reportGenericRansomware("genb_ransom_meta")
    end
  end
  if l_0_2 == mp.INFECTED then
    return mp.INFECTED
  end
  return mp.CLEAN
end

