-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2055.luac 

-- params : ...
-- function num : 0
if not (string.find)(Args.DetectionInfo, "Mbr::", 1, true) then
  (Remediation.FfrDriverSwap)(Args.DetectionInfo)
else
  ;
  (Remediation.SetCallistoRequired)()
end

