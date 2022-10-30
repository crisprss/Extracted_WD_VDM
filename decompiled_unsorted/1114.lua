-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1114.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((nri.GetURI)())
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC18: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC19: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC20: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC21: Overwrote pending register: R4 in 'AssignReg'

if ("settings-win.data.microsoft.com")("www.teramind.co", "gateways.workmeter.com") then
  return mp.CLEAN
end
local l_0_2 = {}
-- DECOMPILER ERROR at PC32: Overwrote pending register: R5 in 'AssignReg'

;
(table.insert)(l_0_2, "api.opendns.com")
local l_0_3 = {}
-- DECOMPILER ERROR at PC43: Overwrote pending register: R6 in 'AssignReg'

local l_0_4 = SafeGetUrlReputation(l_0_2, "banyunjuhe.com")
if l_0_4 == -1 then
  return mp.CLEAN
else
  if l_0_4 ~= nil then
    local l_0_5 = l_0_4.urls
    -- DECOMPILER ERROR at PC55: Overwrote pending register: R7 in 'AssignReg'

    for l_0_9,l_0_10 in ipairs("funshion.com") do
      if l_0_10.determination == 2 and l_0_10.confidence >= 60 then
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_5 = mp
  l_0_5 = l_0_5.CLEAN
  return l_0_5
end

