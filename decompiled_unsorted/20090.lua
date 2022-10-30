-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20090.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[2]).matched then
  l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
else
  return mp.CLEAN
end
if l_0_0 ~= "" then
  if (string.match)(l_0_0, "%.[a-z]+$") or (string.match)(l_0_0, "%.[a-z]+\"$") or (string.find)(l_0_0, "\\downloads\\", 1, true) then
    return mp.CLEAN
  else
    return mp.INFECTED
  end
end
return mp.CLEAN

