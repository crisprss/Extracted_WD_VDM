-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2746.luac 

-- params : ...
-- function num : 0
if (mp.readu_u32)(headerpage, 1) > 536870912 and (mp.readu_u32)(headerpage, 1) < 553648128 then
  (mp.readprotection)(false)
  local l_0_0 = (mp.readfile)(0, 4)
  local l_0_1 = (string.lower)(tostring(l_0_0))
  if (string.find)(l_0_1, "rem ", 1, true) ~= nil then
    return mp.INFECTED
  end
end
do
  ;
  (mp.set_mpattribute)("Lua:UnknownBigFile_GT20M")
  return mp.CLEAN
end

