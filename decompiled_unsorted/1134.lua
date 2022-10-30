-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1134.luac 

-- params : ...
-- function num : 0
reportSessionInformation()
sms_untrusted_process()
if reportGenericRansomware("genb_ransom_meta") == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

