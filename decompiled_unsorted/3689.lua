-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3689.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched and (this_sigattrlog[3]).matched and (string.match)((string.lower)((this_sigattrlog[2]).utf8p1), "[^/]+$") == (string.match)((string.lower)((this_sigattrlog[3]).utf8p1), "[^/]+$") then
  return mp.INFECTED
end
return mp.CLEAN

