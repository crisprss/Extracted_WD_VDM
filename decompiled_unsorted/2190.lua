-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2190.luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  (Remediation.DefaultSpecialRegistry)("HKLM\\Software\\Classes\\CLSID\\{CF4CC405-E2C5-4DDD-B3CE-5E7582D8C9FA}")
  ;
  (Remediation.DefaultSpecialRegistry)("HKCU\\Software\\Classes\\CLSID\\{7C857801-7381-11CF-884D-00AA004B2E24}")
end

