-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15062.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.SUSPICIOUS
else
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.LOWFI

