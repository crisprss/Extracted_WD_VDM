-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18720.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil and (string.lower)((string.sub)(l_0_0, -31)) ~= "altaro.services.backupagent.exe" and (string.lower)((string.sub)(l_0_0, -20)) ~= "coreserviceshell.exe" then
  return mp.INFECTED
end
return mp.CLEAN

