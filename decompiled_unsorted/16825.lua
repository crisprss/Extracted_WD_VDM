-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16825.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (l_0_0 >= 1500000 and l_0_0 <= 2000000 and (pesecs[1]).Name == "UPX0") or l_0_0 >= 3300000 and l_0_0 <= 4000000 then
  return mp.INFECTED
end
return mp.CLEAN

