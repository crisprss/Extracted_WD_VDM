-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1334.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 18000000000 then
  return mp.CLEAN
end
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 == nil or l_0_0.ppid == nil then
  return mp.CLEAN
end
local l_0_1 = (mp.GetParentProcInfo)(l_0_0.ppid)
if l_0_1 == nil or l_0_1.image_path == nil then
  return mp.CLEAN
end
local l_0_2 = (string.lower)(l_0_1.image_path)
if l_0_2:match("([^\\]+)$") ~= "wmiprvse.exe" and IsProcNameInParentProcessTree(l_0_0.ppid, "wmiprvse.exe") then
  return mp.INFECTED
end
return mp.CLEAN

