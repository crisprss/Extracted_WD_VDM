-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17014.luac 

-- params : ...
-- function num : 0
if (((hstrlog[1]).matched and not (hstrlog[2]).matched) or 0 + 1 + 1 >= 1) and (mp.getfilesize)() < 2000000 then
  return mp.INFECTED
end
return mp.CLEAN
