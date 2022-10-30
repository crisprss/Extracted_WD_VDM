-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21100.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = l_0_0.CompanyName
if l_0_1 ~= nil then
  l_0_1 = (string.lower)(l_0_1)
  local l_0_2 = {}
  l_0_2["microsoft corporation"] = "Lua:Company_Microsoft"
  if l_0_2[l_0_1] ~= nil then
    return mp.CLEAN
  end
end
do
  local l_0_3 = l_0_0.InternalName
  local l_0_4 = l_0_0.OriginalFilename
  if l_0_3 and (string.find)(l_0_3, "Microsoft.", 1, true) == 1 and l_0_4 and (string.find)(l_0_4, "Microsoft.", 1, true) == 1 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

