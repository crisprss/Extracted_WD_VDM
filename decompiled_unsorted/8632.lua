-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/8632.luac 

-- params : ...
-- function num : 0
if (hstrlog[10]).hitcount >= 10 then
  return mp.INFECTED
end
return mp.CLEAN
