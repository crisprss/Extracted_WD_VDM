-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21666.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("BM_RTF_FILE") or not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("RoyalRoadRTF.vfo") then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = 16384
local l_0_2 = nil
if l_0_0 < l_0_1 then
  l_0_2 = (mp.readfile)(1, l_0_0)
else
  l_0_2 = (mp.readfile)(l_0_0 - l_0_1 - 1, l_0_1)
end
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = (string.find)(l_0_2, "{\\*\\objdata", 1, true)
if l_0_3 == nil then
  return mp.CLEAN
end
l_0_2 = (string.sub)(l_0_2, l_0_3)
local l_0_4 = 0
local l_0_5, l_0_6, l_0_7 = (string.find)(l_0_2, "([{}])")
while 1 do
  if l_0_5 ~= nil and l_0_7 ~= nil then
    if l_0_7 == "{" then
      l_0_4 = l_0_4 + 1
    else
      if l_0_7 == "}" then
        l_0_4 = l_0_4 - 1
      end
    end
    -- DECOMPILER ERROR at PC109: Unhandled construct in 'MakeBoolean' P1

    if l_0_4 < 1 and l_0_5 > 10 then
      (mp.vfo_add_buffer)((string.sub)(l_0_2, 1, l_0_5 + 1), "[RTFobjdata]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      return mp.INFECTED
    end
  end
  do break end
  l_0_5 = (string.find)(l_0_2, "([{}])", l_0_5 + 1)
end
return mp.CLEAN

