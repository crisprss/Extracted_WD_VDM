-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21637.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = ""
local l_0_2 = ""
local l_0_3 = ""
local l_0_4 = {}
for l_0_8 = 1, l_0_0 do
  if (sigattr_tail[l_0_8]).attribute == 16385 and (sigattr_tail[l_0_8]).utf8p2 ~= 0 and (sigattr_tail[l_0_8]).utf8p2 ~= "" then
    local l_0_9 = ((sigattr_tail[l_0_8]).utf8p2):lower()
    local l_0_10 = {}
    for l_0_14,l_0_15 in (string.gmatch)(l_0_9, "(%w+):(%w+)") do
      l_0_10[l_0_14] = l_0_15
    end
    l_0_1 = scrubData(l_0_10.usrname)
    l_0_2 = scrubData(l_0_10.domain)
    l_0_3 = l_0_10.remoteip
    if l_0_1 ~= nil and l_0_2 ~= nil and l_0_3 ~= nil then
      local l_0_16 = table.insert
      local l_0_17 = l_0_4
      local l_0_18 = {}
      l_0_18.RemoteClientUser = l_0_1
      l_0_18.RemoteClientDomain = l_0_2
      l_0_18.RemoteClientIP = l_0_3
      l_0_16(l_0_17, l_0_18)
    end
  end
end
if #l_0_4 > 0 then
  (bm.add_related_string)("RemoteClientData", json_encode(l_0_4), bm.RelatedStringBMReport)
  reportTimingData()
  return mp.INFECTED
end
return mp.CLEAN

