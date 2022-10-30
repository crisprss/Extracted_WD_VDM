-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2811.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattributesubstring)("hacktool") or not (mp.get_mpattributesubstring)("virtool") then
  return mp.CLEAN
end
local l_0_0 = ((MpCommon.PathToWin32Path)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))):lower()
if l_0_0 == nil or #l_0_0 < 9 then
  return mp.CLEAN
end
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC38: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC39: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC40: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC41: Overwrote pending register: R4 in 'AssignReg'

  if (":\\programdata\\")(":\\perflogs\\", "\\music\\") then
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

