-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16919.luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)(534350, 1057)
if (mp.crc32)(-1, l_0_0, 1, 1057) == 539295301 then
  return mp.INFECTED
end
return mp.CLEAN

