-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21463.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil and (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p1)
  local l_0_1 = mp.SIGATTR_LOG_SZ
  for l_0_5 = 1, l_0_1 do
    if (sigattr_tail[l_0_5]).attribute == 16470 and (string.find)((sigattr_tail[l_0_5]).utf8p2, l_0_0, 1, true) ~= nil then
      local l_0_6 = (sysio.GetFileLastWriteTime)(l_0_0)
      if ((sysio.GetLastResult)()).Success and l_0_6 ~= 0 then
        l_0_6 = l_0_6 / 10000000 - 11644473600
        local l_0_7 = (MpCommon.GetCurrentTimeT)()
        if l_0_7 < l_0_6 or l_0_7 - (l_0_6) > 600 then
          return mp.CLEAN
        end
        bm_AddRelatedFileFromCommandLine(l_0_0)
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

