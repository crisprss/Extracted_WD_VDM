-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2668.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0["360.cn"] = true
local l_0_1 = {}
l_0_1["ramengine.dll"] = true
local l_0_2 = (pe.get_versioninfo)()
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2.CompanyName
local l_0_4 = l_0_2.OriginalFilename
if l_0_3 then
  l_0_3 = (string.lower)(l_0_3)
else
  l_0_3 = ""
end
if l_0_4 then
  l_0_4 = (string.lower)(l_0_4)
else
  l_0_4 = ""
end
if l_0_0[l_0_3] and l_0_1[l_0_4] then
  (mp.set_mpattribute)("LUA:360CnRansomwareTool")
  return mp.INFECTED
end
return mp.CLEAN

