-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21958.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("OfficeOleObjectRepChecked") or (mp.get_mpattribute)("Detection:Exploit:O97M/CVE-2017-0199.D") or not (mp.get_mpattribute)("//AGGR:OfficeFileOLE_1") then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("//SCPT:OleExternalRelationship.OleEmbed")
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = (mp.GetNormalizedScript)(l_0_0.is_header)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = {}
for l_0_6 in (string.gmatch)(l_0_1, "Target=\"([Hh][Tt][Tt][Pp][Ss]?:[^\"]-)\"") do
  local l_0_7, l_0_8 = (mp.CheckUrl)(l_0_6)
  if l_0_7 ~= 1 or l_0_8 ~= 1 then
    (table.insert)(l_0_2, l_0_6)
  end
end
do
  if l_0_2 == nil or #l_0_2 == 0 then
    return mp.CLEAN
  end
  local l_0_9 = {}
  l_0_9.SIG_CONTEXT = "Office External OleObject"
  l_0_9.CONTENT_SOURCE = "Office External OleObject"
  l_0_9.PROCESS_CONTEXT = "MS Office"
  l_0_9.PARENT_CONTEXT = nil
  l_0_9.FILELESS = "false"
  l_0_9.CMDLINE_URL = "false"
  l_0_9.BREAK_AT_FIRST_HIT_MALWARE = "60"
  l_0_9.BREAK_AT_FIRST_HIT_PHISH = "60"
  local l_0_10 = (mp.GetUrlReputation)(l_0_2, l_0_9)
  if l_0_10 ~= nil then
    local l_0_11 = l_0_10.urls
    for l_0_15,l_0_16 in ipairs(l_0_11) do
      if (l_0_16.determination == 2 and l_0_16.confidence >= 60) or l_0_16.determination == 3 and l_0_16.confidence >= 60 then
        (mp.set_mpattribute)("OfficeOleObjectRepChecked")
        return mp.INFECTED
      end
    end
  end
  do
    l_0_11 = mp
    l_0_11 = l_0_11.set_mpattribute
    l_0_11("OfficeOleObjectRepChecked")
    l_0_11 = mp
    l_0_11 = l_0_11.CLEAN
    return l_0_11
  end
end

