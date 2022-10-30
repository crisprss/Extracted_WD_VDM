-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14659.luac 

-- params : ...
-- function num : 0
if (((pe.get_versioninfo)()).OriginalFilename):lower() ~= "sharpshares.exe" then
  return mp.CLEAN
end
return mp.INFECTED

