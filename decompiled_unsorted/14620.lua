-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14620.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.get_mpattribute)("SIGATTR:DelphiFile") then
  return mp.INFECTED
end
return mp.CLEAN
