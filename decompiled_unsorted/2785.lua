-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2785.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 1048576 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
local l_0_2 = 1
for l_0_6 in (string.gmatch)(l_0_1, "base64.+Content%-Type:.+application/x%-mso([%s%w+/]+=?=?)") do
  if l_0_2 > 10 then
    break
  end
  if #l_0_6 > 100 then
    (mp.vfo_add_buffer)((MpCommon.Base64Decode)(l_0_6), "[RtfMso]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
  l_0_2 = l_0_2 + 1
end
do
  return mp.CLEAN
end

