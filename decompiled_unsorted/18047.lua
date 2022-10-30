-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18047.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["excel.exe"] = ""
l_0_0["windword.exe"] = ""
if l_0_0[(string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))] then
  return mp.INFECTED
end
return mp.CLEAN

