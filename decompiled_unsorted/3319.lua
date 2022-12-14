-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3319.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == nil or l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_1 == nil or #l_0_1 > 44 then
  return mp.CLEAN
end
if (string.find)(l_0_1, " ", 1, true) ~= nil then
  l_0_1 = l_0_1:gsub("%s", "/x20")
  if l_0_1 == nil or #l_0_1 > 44 then
    return mp.CLEAN
  end
end
local l_0_2 = "Lua:ProcNameAttr!"
;
(mp.set_mpattribute)(l_0_2 .. l_0_1)
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_3 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_3 == nil then
    return mp.CLEAN
  end
  local l_0_4 = (mp.GetParentProcInfo)(l_0_3)
  if l_0_4 == nil then
    return mp.CLEAN
  end
  local l_0_5 = l_0_4.image_path
  if l_0_5 == nil then
    return mp.CLEAN
  end
  local l_0_6 = (string.match)(l_0_5, "([^\\]+)$")
  if l_0_6 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_6, " ", 1, true) ~= nil then
    l_0_6 = l_0_6:gsub("%s", "/x20")
    if l_0_6 == nil or #l_0_6 > 38 then
      return mp.CLEAN
    end
  end
  local l_0_7 = "Lua:ParentProcNameAttr!"
  ;
  (mp.set_mpattribute)(l_0_7 .. l_0_6)
end
do
  return mp.CLEAN
end

