-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1033.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if not l_0_1 or #l_0_1 <= 30 then
  return mp.CLEAN
end
for l_0_5 in (string.gmatch)(l_0_1, "%w+:%w+") do
  local l_0_6 = (string.match)(l_0_5, "%w+:%w+")
  if l_0_6 ~= nil and #(string.match)(l_0_6, "%w+") == 12 and #(string.match)(l_0_6, ":%w+") == 21 then
    return mp.LOWFI
  end
end
return mp.CLEAN

