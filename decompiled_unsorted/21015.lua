-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21015.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not contains(l_0_0, (mp.ContextualExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC23: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC24: Overwrote pending register: R2 in 'AssignReg'

if ("\\music\\")(l_0_0, l_0_1) then
  local l_0_2 = (bm.get_current_process_startup_info)()
  if l_0_2 ~= nil and l_0_2.command_line ~= nil then
    local l_0_3 = {}
    -- DECOMPILER ERROR at PC43: No list found for R3 , SetList fails

    -- DECOMPILER ERROR at PC44: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC45: Overwrote pending register: R5 in 'AssignReg'

    -- DECOMPILER ERROR at PC46: Overwrote pending register: R6 in 'AssignReg'

    if ("mega")("webdav", "copy") then
      return mp.INFECTED
    end
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

