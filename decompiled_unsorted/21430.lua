-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21430.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
local l_0_1 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (this_sigattrlog[1]).utf8p2
end
if (this_sigattrlog[2]).matched then
  l_0_1 = (this_sigattrlog[2]).utf8p2
end
if (this_sigattrlog[3]).matched then
  l_0_1 = (this_sigattrlog[3]).utf8p2
end
if (this_sigattrlog[4]).matched then
  l_0_1 = (this_sigattrlog[4]).utf8p2
end
if (this_sigattrlog[5]).matched then
  l_0_1 = (this_sigattrlog[5]).utf8p2
end
if l_0_0 ~= "" and ((string.find)(l_0_0, " -size ", 1, true) or (string.find)(l_0_0, " -p ", 1, true) or (string.find)(l_0_0, "-m local", 1, true) or (string.find)(l_0_0, "-m net", 1, true) or (string.find)(l_0_0, "-m all", 1, true) or (string.find)(l_0_0, "regsvr32.exe /s", 1, true)) then
  return mp.INFECTED
end
if l_0_1 ~= "" and (string.find)(l_0_1, "regsvr32.exe /s", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

