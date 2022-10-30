-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12602.luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).hitcount > 10 or (hstrlog[2]).hitcount > 10 then
  return mp.INFECTED
end
return mp.CLEAN

