-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18742.luac 

-- params : ...
-- function num : 0
if pehdr.AddressOfEntryPoint ~= 238592 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize ~= 16384 then
  return mp.CLEAN
end
return mp.INFECTED

