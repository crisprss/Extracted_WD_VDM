-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2706.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
if l_0_0:find("\\appdata\\local\\microsoft\\windows\\inetcache\\content.outlook\\", 1, true) ~= nil and (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "outlook.exe" then
  return mp.INFECTED
end
return mp.CLEAN

