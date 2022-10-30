-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21006.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not contains(l_0_0, (mp.ContextualExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC30: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC31: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC32: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R4 in 'AssignReg'

  if (":\\programData\\rclone.exe")(":\\perflogs\\", ":\\windows\\help\\") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

