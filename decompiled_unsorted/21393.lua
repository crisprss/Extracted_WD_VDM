-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21393.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 == nil or l_0_0 < 500 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = 6291456
local l_0_2 = (mp.readfile)(0, math_min(l_0_0, l_0_1))
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = 0
for l_0_7 in (string.gmatch)(l_0_2, "<script.-</script") do
  if #l_0_7 > 500 then
    for l_0_11 in (string.gmatch)(l_0_7, "=%s*[\'\"]([a-z0-9A-Z+/]+=?=?)[\'\"]") do
      if #l_0_11 > 500 then
        (mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_11), "[HTMLsmuggling]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        l_0_3 = l_0_3 + 1
      end
    end
  end
end
if l_0_3 > 0 then
  return mp.INFECTED
end
return mp.CLEAN

