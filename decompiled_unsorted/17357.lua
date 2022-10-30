-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17357.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2048000 and pehdr.NumberOfSections == 3 and (mp.get_mpattribute)("DOTNET_Reactor_Obfuscator") then
  return mp.INFECTED
end
return mp.CLEAN

