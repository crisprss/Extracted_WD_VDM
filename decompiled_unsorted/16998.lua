-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16998.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 21 then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanDownloader:Win32/Krado.A")
;
(mp.set_mpattribute)("do_exhaustivehstr_rescan")
return mp.CLEAN
