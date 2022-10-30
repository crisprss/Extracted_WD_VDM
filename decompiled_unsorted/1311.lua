-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1311.luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (string.lower)(l_1_0.image_path)
  local l_1_2 = l_1_1:match("([^\\]+)$")
  local l_1_3 = false
  l_1_3 = (MpCommon.StringRegExpSearch)("(wttsvc|teamviewer)", l_1_2)
  if l_1_3 == true then
    return true
  end
  return false
end

local l_0_1 = (mp.GetParentProcInfo)()
while l_0_1 ~= nil do
  if l_0_0(l_0_1) then
    return mp.CLEAN
  end
  l_0_1 = (mp.GetParentProcInfo)(l_0_1.ppid)
end
return mp.INFECTED

