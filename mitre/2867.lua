-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2867.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil then
  TrackPidAndTechniqueBM(l_0_0.ppid, "T1218", "msdt_pcwdiag_source")
  local l_0_1 = (mp.ContextualExpandEnvironmentVariables)("%windir%\\system32\\sdiagnhost.exe")
  local l_0_2 = (sysio.GetProcessFromFileName)(l_0_1)
  if l_0_2 ~= nil and #l_0_2 > 0 then
    for l_0_6,l_0_7 in pairs(l_0_2) do
      local l_0_8 = (string.format)("pid:%d,ProcessStart:%u", l_0_7.pid, l_0_7.starttime)
      TrackPidAndTechniqueBM(l_0_8, "T1218", "msdt_pcwdiag_target")
    end
  end
  do
    do
      do return mp.INFECTED end
      return mp.CLEAN
    end
  end
end

