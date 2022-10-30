-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21535.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
if not contains(l_0_0, (mp.ContextualExpandEnvironmentVariables)("%systemdrive%")) then
  return mp.CLEAN
end
local l_0_1 = {}
-- DECOMPILER ERROR at PC30: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC31: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC32: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC33: Overwrote pending register: R4 in 'AssignReg'

if not (":\\programData\\")(":\\perflogs\\", ":\\windows\\help\\") then
  return mp.CLEAN
end
local l_0_2 = (bm.get_current_process_startup_info)()
do
  do
    if l_0_2 ~= nil and l_0_2.command_line ~= nil then
      local l_0_3 = {}
      -- DECOMPILER ERROR at PC50: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC51: Overwrote pending register: R6 in 'AssignReg'

      -- DECOMPILER ERROR at PC52: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC53: No list found for R3 , SetList fails

      -- DECOMPILER ERROR at PC54: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC55: Overwrote pending register: R5 in 'AssignReg'

      -- DECOMPILER ERROR at PC56: Overwrote pending register: R6 in 'AssignReg'

      if ("mega")(":\\windows\\debug\\", ":\\windows\\tapi\\") then
        (bm.add_threat_file)(l_0_0)
        return mp.INFECTED
      end
    end
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

