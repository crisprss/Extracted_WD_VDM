-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1165.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC9: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0 ~= nil and (string.find)(l_0_0, "windows\\system32\\services.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

