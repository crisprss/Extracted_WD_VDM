-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14920.luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (mp.get_mpattribute)("NID:Win32/Emotet.PBB!MTB") then
  return mp.INFECTED
end
return mp.CLEAN

