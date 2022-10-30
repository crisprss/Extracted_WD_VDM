-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18716.luac 

-- params : ...
-- function num : 0
local l_0_0 = (MpCommon.GetPersistContextNoPath)("vssamsipid")
for l_0_4,l_0_5 in ipairs(l_0_0) do
  sms_untrusted_process_pid(l_0_5)
  add_parents(l_0_5)
  reportSessionInformation()
  do return mp.INFECTED end
end
return mp.CLEAN

