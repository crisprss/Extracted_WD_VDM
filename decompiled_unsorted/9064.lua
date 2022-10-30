-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/9064.luac 

-- params : ...
-- function num : 0
if (hstrlog[2]).hitcount > 3 then
  return mp.INFECTED
end
return mp.CLEAN

