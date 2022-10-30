-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/675.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScanSource)()
if l_0_0 ~= mp.SCANSOURCE_IOAV_WEB then
  return mp.CLEAN
end
local l_0_1 = (mp.IOAVGetDownloadUrl)()
if l_0_1 == nil or l_0_1 == "" then
  return mp.CLEAN
end
local l_0_2 = (string.match)((string.lower)(l_0_1), "https?://([^/]+)/")
if l_0_2 == nil or l_0_2 == "" then
  return mp.CLEAN
end
local l_0_3 = false
if (string.find)(l_0_2, "dropbox%.com") then
  l_0_3 = true
end
if (string.find)(l_0_2, "drive%.google%.com") then
  l_0_3 = true
end
if l_0_3 == false then
  return mp.CLEAN
end
return mp.INFECTED

