-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1759.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)(l_0_1)
if l_0_1:find("maximomobile\\removecreds.ps1", 1, true) then
  return mp.CLEAN
end
if l_0_1:find(":\\windows\\ccm\\systemtemp", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)()
local l_0_3 = ""
if l_0_2 ~= nil then
  l_0_3 = (string.lower)(l_0_2.image_path)
end
if l_0_3:find(":\\windows\\ccm\\systemtemp", 1, true) then
  return mp.CLEAN
end
return mp.LOWFI

