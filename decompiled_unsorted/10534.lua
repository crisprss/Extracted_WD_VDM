-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10534.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe and not peattributes.isvbpcode then
  return mp.CLEAN
end
return mp.INFECTED
