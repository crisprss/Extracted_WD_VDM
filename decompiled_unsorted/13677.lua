-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13677.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetHSTRCallerId)()
if l_0_0 and mp.HSTR_CALLER_SMS == l_0_0 then
  (mp.changedetectionname)(805306755)
end
return mp.INFECTED

