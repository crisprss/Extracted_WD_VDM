-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3198.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (mp.GetParentProcInfo)(l_0_1)
if l_0_2 == nil then
  return mp.CLEAN
end
local l_0_3 = l_0_2.image_path
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.match)(l_0_3, "([^\\]+)$")
if l_0_0 == "rundll32.exe" and l_0_4 == "wscript.exe" then
  (mp.set_mpattribute)("Lua:Context/WscriptRundllLoadDllOnMountedDrive")
else
  if l_0_0 == "regsvr32.exe" and l_0_4 == "wscript.exe" then
    (mp.set_mpattribute)("Lua:Context/WscriptRegsvrLoadDllOnMountedDrive")
  else
    if l_0_0 == "rundll32.exe" and l_0_4 == "cscript.exe" then
      (mp.set_mpattribute)("Lua:Context/CscriptRundllLoadDllOnMountedDrive")
    else
      if l_0_0 == "regsvr32.exe" and l_0_4 == "cscript.exe" then
        (mp.set_mpattribute)("Lua:Context/CscriptRegsvrLoadDllOnMountedDrive")
      end
    end
  end
end
return mp.CLEAN

