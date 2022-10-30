-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3060.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//Lua:GIOAVTopLevelUDFFile") and not (mp.get_mpattribute)("RPF:TopLevelFile") and not (mp.get_mpattribute)("//GIOAVFirstPEInTopLevelUDFFile") then
  (mp.set_mpattribute)("Lua:IOAVFirstPEInTopLevelUDFFile")
  ;
  (mp.set_mpattribute)("//GIOAVFirstPEInTopLevelUDFFile")
  ;
  (mp.set_mpattribute)("MpNonCachedLowfi")
end
do
  if (mp.get_mpattribute)("//Lua:GIOAVFirstUDFFileInContainer") and not (mp.get_mpattribute)("RPF:TopLevelFile") and not (mp.get_mpattribute)("//GIOAVFirstPEInUDFFileInContainer") then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if l_0_0:find(".iso->", 1, true) or l_0_0:find(".img->", 1, true) then
      (mp.set_mpattribute)("Lua:IOAVFirstPEInUDFFileInContainer")
      ;
      (mp.set_mpattribute)("//GIOAVFirstPEInUDFFileInContainer")
      ;
      (mp.set_mpattribute)("MpNonCachedLowfi")
    end
  end
  return mp.CLEAN
end

