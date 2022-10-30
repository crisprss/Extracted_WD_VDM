-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20725.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
triggerMemoryScanOnProcessTree(true, true, "SMS_M", 1000, "Behavior:Win32/WerInject.SA")
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_1, l_0_2, l_0_3 = ((this_sigattrlog[1]).utf8p2):lower()
  else
  end
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_4 = ((this_sigattrlog[2]).utf8p2):lower()
    if contains(l_0_4, {"\\werfault.exe$", "\\wermgr.exe$"}, false) then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

