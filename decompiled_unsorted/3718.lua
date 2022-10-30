-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3718.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 5120 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetNormalizedScript)(true)
if l_0_1 ~= nil and (string.find)(l_0_1, "|base64-D|", 1, true) then
  local l_0_2 = l_0_1:match("echo%-e([%w%+%/%=]+)%|base64%-D")
  if #l_0_2 and #l_0_2 % 4 == 0 then
    local l_0_3 = (MpCommon.Base64Decode)(l_0_2)
    if #l_0_3 and l_0_3 ~= nil then
      (mp.vfo_add_buffer)(l_0_3, "[Base64DecData]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      if (string.find)(l_0_3, "| /bin/zsh", -10, true) then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

