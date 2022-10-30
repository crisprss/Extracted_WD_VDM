-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21554.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("3b576869-a4ec-4529-8536-b80a7769e899") ~= true then
  return mp.CLEAN
end
local l_0_0 = "enghipscpy:blockaccess:3b576869-a4ec-4529-8536-b80a7769e899"
local l_0_1 = ""
local l_0_2 = ""
if (this_sigattrlog[5]).matched then
  l_0_1 = (this_sigattrlog[5]).utf8p1
  l_0_2 = (this_sigattrlog[5]).utf8p2
  if l_0_1 == nil or l_0_1 == "" or l_0_2 == nil or l_0_2 == "" then
    return mp.CLEAN
  end
else
  return mp.CLEAN
end
if (string.find)(l_0_1, "%", 1, true) ~= nil or (string.find)(l_0_2, "%", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3.exe = true
l_0_3.dll = true
l_0_3.sys = true
local l_0_4 = (string.lower)((string.match)(l_0_1, "%.([^%.]+)$"))
if l_0_3[l_0_4] == true and not (MpCommon.QueryPersistContext)(l_0_2, l_0_0) then
  (MpCommon.AppendPersistContext)(l_0_2, l_0_0, 0)
  return mp.INFECTED
end
return mp.CLEAN

