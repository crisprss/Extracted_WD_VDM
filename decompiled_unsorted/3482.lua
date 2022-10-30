-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3482.luac 

-- params : ...
-- function num : 0
if footerpage == nil and footerpage == "" then
  return mp.CLEAN
end
local l_0_0 = {}
local l_0_1 = nil
for l_0_5 in (string.gmatch)(footerpage, "%.send.\"([A-Za-z0-9+/=]+)\"") do
  if l_0_5 ~= nil and l_0_5 ~= "" and (string.len)(l_0_5) >= 20 and (string.len)(l_0_5) <= 1000 then
    l_0_1 = (MpCommon.Base64Decode)(l_0_5)
    if l_0_1 ~= nil and l_0_1 ~= "" then
      (mp.set_mpattribute)("Lua:AMSI.JS.SendWithBase64Str.S1")
      break
    end
  end
end
do
  for l_0_9 in (string.gmatch)(footerpage, "t\",\"https?://([A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_9 ~= nil and l_0_9 ~= "" and (string.len)(l_0_9) >= 10 and (string.len)(l_0_9) <= 1000 then
      (mp.set_mpattribute)("Lua:AMSI.JS.DomainWith4Parts.S1")
      ;
      (table.insert)(l_0_0, l_0_9)
    end
  end
  for l_0_13 in (string.gmatch)(footerpage, "t\",\"https?://([A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_13 ~= nil and l_0_13 ~= "" and (string.len)(l_0_13) >= 4 and (string.len)(l_0_13) <= 1000 then
      (mp.set_mpattribute)("Lua:AMSI.JS.DomainWith2Parts.S1")
      ;
      (table.insert)(l_0_0, l_0_13)
    end
  end
  for l_0_17 in (string.gmatch)(footerpage, "t\",\"https?://([A-Za-z0-9]+%.[A-Za-z0-9]+%.[A-Za-z0-9]+)/") do
    if l_0_17 ~= nil and l_0_17 ~= "" and (string.len)(l_0_17) >= 8 and (string.len)(l_0_17) <= 1000 then
      (table.insert)(l_0_0, l_0_17)
    end
  end
  do
    if l_0_0 == nil or #l_0_0 == 0 then
      return mp.CLEAN
    end
    local l_0_18 = {}
    l_0_18.SIG_CONTEXT = "LUA_GENERIC"
    l_0_18.CONTENT_SOURCE = "AMSI_JS"
    l_0_18.PROCESS_CONTEXT = "JS Caller"
    l_0_18.PARENT_CONTEXT = nil
    l_0_18.FILELESS = "true"
    l_0_18.CMDLINE_URL = "false"
    l_0_18.BREAK_AT_FIRST_HIT_MALWARE = "60"
    l_0_18.BREAK_AT_FIRST_HIT_PHISH = "60"
    local l_0_19 = (mp.GetUrlReputation)(l_0_0, l_0_18)
    if l_0_19 ~= nil then
      local l_0_20 = l_0_19.urls
      for l_0_24,l_0_25 in ipairs(l_0_20) do
        if l_0_25.confidence >= 60 and (l_0_25.determination == 2 or l_0_25.determination == 3) then
          (mp.set_mpattribute)("Lua:AMSI.JS.BadDomainFound.S1")
          return mp.CLEAN
        end
      end
    end
    do
      l_0_20 = mp
      l_0_20 = l_0_20.CLEAN
      return l_0_20
    end
  end
end

