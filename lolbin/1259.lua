-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1259.luac 

-- params : ...
-- function num : 0
if IsPidExcluded("CMDHSTR") then
  return mp.CLEAN
end
TrackPidAndTechnique("CMDHSTR", "T1218.011", "lolbin_rundll")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI

