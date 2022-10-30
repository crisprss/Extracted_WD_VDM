-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19829.luac 

-- params : ...
-- function num : 0
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = 0
for l_0_5 = 1, l_0_0 do
  if (sigattr_tail[l_0_5]).attribute == 16389 and (sigattr_tail[l_0_5]).utf8p2 == "ATTR_a280babb" and (sigattr_tail[l_0_5]).utf8p1 ~= nil then
    l_0_1 = l_0_1 + 1
    if l_0_1 > 5 then
      sms_untrusted_process()
      reportTimingData()
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

