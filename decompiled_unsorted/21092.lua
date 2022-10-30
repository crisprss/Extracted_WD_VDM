-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21092.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\vipre business agent\\sbamsvc.exe", 1, true) or (string.find)(l_0_0, "win10clean", 1, true) then
  return mp.CLEAN
end
if peattributes.x86_image and not (mp.get_mpattribute)("do_exhaustivehstr_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
if peattributes.amd64_image and not (mp.get_mpattribute)("do_exhaustivehstr_64bit_rescan") then
  (mp.set_mpattribute)("do_exhaustivehstr_64bit_rescan")
end
return mp.INFECTED

