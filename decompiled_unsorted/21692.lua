-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21692.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == "" or l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
local l_0_2 = (mp.GetParentProcInfo)()
if l_0_2 ~= nil then
  local l_0_3 = (string.lower)(l_0_2.image_path)
  local l_0_4 = (mp.GetProcessCommandLine)(l_0_2.ppid)
  local l_0_5 = {}
  -- DECOMPILER ERROR at PC32: No list found for R5 , SetList fails

  local l_0_6 = {}
  -- DECOMPILER ERROR at PC35: No list found for R6 , SetList fails

  -- DECOMPILER ERROR at PC36: Overwrote pending register: R7 in 'AssignReg'

  if ("bootstrap5")(l_0_3, l_0_5) then
    return mp.CLEAN
  end
  if contains(l_0_4, l_0_6) then
    return mp.CLEAN
  end
end
do
  local l_0_7 = {}
  -- DECOMPILER ERROR at PC58: No list found for R3 , SetList fails

  local l_0_8 = false
  -- DECOMPILER ERROR at PC60: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC61: Overwrote pending register: R6 in 'AssignReg'

  for l_0_12,l_0_13 in ("(?:set|add)-mppreference\\s+-exclusionpath\\s+[\'\"]c:\\\\[\'\"]\\s*$")("(?:set|add)-mppreference\\s+-exclusionpath\\s+c:\\\\\\s*[,;][\'\"]?\\s*\\w?") do
    l_0_8 = (MpCommon.StringRegExpSearch)(l_0_13, l_0_1)
    if l_0_8 then
      if (versioning.IsSeville)() then
        return mp.INFECTED
      else
        return mp.LOWFI
      end
    end
  end
  return mp.CLEAN
end

