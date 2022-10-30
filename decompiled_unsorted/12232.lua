-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12232.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 1 and pehdr.Subsystem ~= 1 then
  return mp.INFECTED
end
return mp.CLEAN

