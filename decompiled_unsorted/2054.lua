-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2054.luac 

-- params : ...
-- function num : 0
if (Trigger.InjectedModuleScan64)() then
  (Trigger.TriggerKernelScan)("InjectedModuleScan64")
else
  if AlureonDeviceTrigger() then
    (Trigger.TriggerKernelScan)("AlureonDeviceTrigger-64")
  end
end

