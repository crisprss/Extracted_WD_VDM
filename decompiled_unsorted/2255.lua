-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2255.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
do
  if l_0_0 ~= nil then
    local l_0_1 = {}
    l_0_1["IGOR_UI.exe"] = ""
    l_0_1["IGOR_Core.dll"] = ""
    l_0_1["IGOR.Interface.CLI.exe"] = ""
    if l_0_1[l_0_0.OriginalFilename] then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

