-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19716.luac 

-- params : ...
-- function num : 0
reportSessionInformation()
add_parents()
local l_0_0 = mp.CLEAN
if (this_sigattrlog[2]).matched then
  l_0_0 = reportGenericRansomware("gend_ransom_meta")
else
  if (this_sigattrlog[3]).matched then
    l_0_0 = reportGenericRansomware("genb_ransom_meta")
  end
end
if l_0_0 == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

