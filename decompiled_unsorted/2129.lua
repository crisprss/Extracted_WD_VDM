-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2129.luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CoreDriveB") > 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

