-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17818.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (this_sigattrlog[2]).matched then
  l_0_0 = (nri.GetURI)()
end
if l_0_0 ~= "" and (string.find)(l_0_0, "&X-Rps-CAT=", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

