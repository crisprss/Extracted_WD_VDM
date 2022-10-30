-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20643.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  local l_0_0, l_0_1 = (pe.get_exports)()
  for l_0_5 = 1, l_0_0 do
    if (l_0_1[l_0_5]).fn == 2934435936 then
      local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
      if l_0_6 then
        (MpCommon.RequestSmsOnProcess)(l_0_6, MpCommon.SMS_SCAN_MED)
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

