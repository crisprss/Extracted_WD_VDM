-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20689.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[1]).matched then
  l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
end
if l_0_0 ~= "" and ((string.find)(l_0_0, "\\appdata\\local\\temp\\acrobat_sbx\\", 1, true) or (string.find)(l_0_0, "\\appdata\\local\\temp\\acrord32_sbx\\", 1, true)) then
  if (string.find)(l_0_0, "\\spoon\\cache\\", 1, true) or (string.find)(l_0_0, "\\bullseyecoverage", 1, true) then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN

