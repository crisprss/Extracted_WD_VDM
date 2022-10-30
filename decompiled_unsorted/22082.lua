-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22082.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_mpattributevalue)("VSSAMSI_CallerPID")
local l_0_1 = (mp.get_mpattributevalue)("VSSAMSI_ProcessStartTime")
if l_0_0 == nil or l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2, l_0_3 = nil, nil
local l_0_4 = {}
l_0_4["powershell.exe"] = true
l_0_4["cmd.exe"] = true
l_0_4["wscript.exe"] = true
l_0_4["cscript.exe"] = true
local l_0_5 = {}
l_0_5["svchost.exe"] = true
l_0_5["agentExecutor.exe"] = true
l_0_5["iperius.exe"] = true
l_0_5["oxibackupd.exe"] = true
l_0_5["obndmpd.exe"] = true
l_0_5["cpmagentservice.exe"] = true
local l_0_6 = (string.format)("pid:%d,ProcessStart:%u", l_0_0, l_0_1)
l_0_2 = (mp.GetProcessCommandLine)(l_0_6)
if l_0_2 ~= nil then
  local l_0_7 = {}
  ;
  (table.insert)(l_0_7, l_0_6)
  if (MpCommon.GetPersistContextCountNoPath)("vssamsipid") > 0 then
    (MpCommon.OverwritePersistContextNoPath)("vssamsipid", l_0_7, 120)
  else
    ;
    (MpCommon.SetPersistContextNoPath)("vssamsipid", l_0_7, 120)
  end
  ;
  (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSCaller=%s", l_0_2))
  l_0_3 = (mp.GetParentProcInfo)(l_0_6)
  if l_0_3 ~= nil and l_0_3.image_path ~= nil then
    (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSCallerParent=%s", l_0_3.image_path))
    local l_0_8 = (string.lower)((l_0_3.image_path):match("([^\\]+)$"))
    if l_0_8 ~= nil and l_0_4[l_0_8] then
      local l_0_9 = (mp.GetParentProcInfo)(l_0_3.ppid)
      if l_0_9 ~= nil and l_0_9.image_path ~= nil then
        (mp.set_mpattribute)((string.format)("MpInternal_researchdata=VSSCallerGParent=%s", l_0_9.image_path))
        local l_0_10 = (string.lower)((l_0_9.image_path):match("([^\\]+)$"))
        if l_0_10 ~= nil and l_0_5[l_0_10] then
          return mp.CLEAN
        end
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

