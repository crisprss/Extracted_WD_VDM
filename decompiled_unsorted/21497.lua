-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21497.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 ~= nil then
  local l_0_1 = (string.lower)(l_0_0.image_path)
  local l_0_2 = l_0_1:match("([^\\]+)$")
  local l_0_3 = {}
  l_0_3["winword.exe"] = true
  l_0_3["excel.exe"] = true
  l_0_3["powerpnt.exe"] = true
  l_0_3["outlook.exe"] = true
  l_0_3["olk.exe"] = true
  l_0_3["acrord32.exe"] = true
  l_0_3["foxit.exe"] = true
  l_0_3["thunderbird.exe"] = true
  if l_0_3[l_0_2] then
    return mp.INFECTED
  end
  if (hstrlog[3]).matched then
    local l_0_4 = {}
    l_0_4["powershell.exe"] = true
    l_0_4["pwsh.exe"] = true
    l_0_4["cmd.exe"] = true
    l_0_4["cscript.exe"] = true
    l_0_4["wscript.exe"] = true
    l_0_4["mshta.exe"] = true
    l_0_4["chrome.exe"] = true
    l_0_4["msedge.exe"] = true
    l_0_4["firefox.exe"] = true
    l_0_4["opera.exe"] = true
    l_0_4["iexplore.exe"] = true
    l_0_4["brave.exe"] = true
    l_0_4["runtimebroker.exe"] = true
    if l_0_4[l_0_2] then
      return mp.INFECTED
    end
  end
end
do
  return mp.LOWFI
end

