-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1018.luac 

-- params : ...
-- function num : 0
if pehdr.TimeDateStamp >= 1429568715 then
  (mp.set_mpattribute)("Lowfi:HSTR:BProtect:AskGuard.B")
  return mp.CLEAN
end
return mp.INFECTED
