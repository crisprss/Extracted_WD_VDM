-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21617.luac 

-- params : ...
-- function num : 0
triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/Qakbot.SA")
local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 then
  l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
end
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 then
  l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p2)
else
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 then
    l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p2)
  end
end
local l_0_2, l_0_3 = pcall(mp.GetInlineScriptsFromCommandLine, l_0_0)
if l_0_2 and l_0_3 then
  for l_0_7,l_0_8 in ipairs(l_0_3) do
    l_0_8 = (mp.ContextualExpandEnvironmentVariables)(l_0_8)
    ;
    (bm.add_related_file)(l_0_8)
  end
end
do
  local l_0_9 = extractDllForRegproc(l_0_1)
  if l_0_9 and (mp.IsKnownFriendlyFile)(l_0_9, true, false) == false then
    (bm.add_related_file)(l_0_9)
  end
  return mp.INFECTED
end

