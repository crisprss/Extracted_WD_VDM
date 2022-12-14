-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21746.luac 

-- params : ...
-- function num : 0
if (mp.IsKnownFriendlyFile)((MpCommon.PathToWin32Path)((bm.get_imagepath)()), true, true) == true then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  local l_0_7 = (MpCommon.GetProcessElevationAndIntegrityLevel)(l_0_6.ppid)
  if l_0_6.reason == bm.RELATIONSHIP_INJECTION and l_0_7.IntegrityLevel == MpCommon.SECURITY_MANDATORY_SYSTEM_RID and (string.find)((string.lower)(l_0_6.image_path), "\\windows\\", 1, true) then
    local l_0_8 = (string.lower)((bm.get_imagepath)())
    if (string.find)((string.lower)(l_0_8), "\\program files\\", 1, true) or (string.find)((string.lower)(l_0_8), "\\program files (x86)\\", 1, true) or (string.find)((string.lower)(l_0_8), "\\steamapps\\common\\", 1, true) or (string.find)((string.lower)(l_0_8), "\\games\\", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
return mp.CLEAN

