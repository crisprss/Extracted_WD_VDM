-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2048.luac 

-- params : ...
-- function num : 0
local l_0_0 = (Kernel.GetModuleList)()
if Infrastructure_ScanFakeNtModule(l_0_0) then
  return (Detection.GenerateDetection)(2147684922, "Vbr::Rovnix")
end

