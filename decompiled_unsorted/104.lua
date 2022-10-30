-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/104.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if not l_0_0 or not (l_0_0:lower()):find("svchost", 1, true) then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)()
if not l_0_1 then
  return mp.CLEAN
end
local l_0_2 = (l_0_1:lower()):match("^\\device\\mup\\.+\\sysvol\\.+\\policies\\{(%x%x%x%x%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x%x%x%x%x%x%x%x%x)}\\gpt.ini$")
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = tostring(headerpage)
local l_0_4 = l_0_3:match("Version%s*=%s*(%d+)")
if not l_0_4 then
  (mp.set_mpattribute)("Lua:GptIniMissingVersion")
  return mp.INFECTED
end
if pcall(MpCommon.RollingQueueQueryKey, "gpo_block", l_0_2) and MpCommon.RollingQueueQueryKey then
  return mp.INFECTED
end
local l_0_6 = nil
local l_0_5 = R6_PC85
if l_0_6 and l_0_5.value == l_0_4 then
  return mp.CLEAN
end
local l_0_7 = (crypto.Sha1Buffer)(l_0_2, 0, #l_0_2)
local l_0_8 = tonumber(l_0_4)
local l_0_9 = (mp.bitand)(l_0_8, 4294901760) / 65536
local l_0_10 = (mp.bitand)(l_0_8, 65535)
local l_0_11 = (string.format)("http://gpo.%s", l_0_7)
local l_0_12 = {}
l_0_12.SIG_CONTEXT = "LUA_GENERIC"
l_0_12.CONTENT_SOURCE = "GPO"
l_0_12.GPO_USER_VERSION = l_0_9
l_0_12.GPO_MACHINE_VERSION = l_0_10
local l_0_13 = pcall
local l_0_14 = mp.GetUrlReputation
local l_0_15 = {}
-- DECOMPILER ERROR at PC128: No list found for R15 , SetList fails

-- DECOMPILER ERROR at PC129: Overwrote pending register: R16 in 'AssignReg'

l_0_13 = l_0_13(l_0_14, l_0_15, l_0_11)
if l_0_13 then
  l_0_15 = l_0_14.urls
  l_0_15 = l_0_15[1]
  l_0_15 = l_0_15.determination
  if l_0_15 == 4 then
    l_0_15 = AppendToRollingQueue
    l_0_15("gpo_block", l_0_2, l_0_4, 28800, 128)
    l_0_15 = mp
    l_0_15 = l_0_15.INFECTED
    return l_0_15
  end
end
l_0_15 = AppendToRollingQueue
l_0_15("gpo_applied", l_0_2, l_0_4, 31536000, 128)
l_0_15 = mp
l_0_15 = l_0_15.CLEAN
return l_0_15

