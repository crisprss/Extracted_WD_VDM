-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17911.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 10 and (mp.get_mpattribute)("CERT:PUA:Win32/DLAssis.A1") then
  (mp.set_mpattribute)("PUA:ML:Blocked:DownloadAssistant")
  return mp.INFECTED
end
return mp.CLEAN

