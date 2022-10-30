-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21594.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
  if l_0_0 then
    if (mp.IsKnownFriendlyFile)(l_0_0, true, false) == true then
      return mp.CLEAN
    end
    local l_0_1 = (string.match)((string.lower)((this_sigattrlog[1]).utf8p1), "\\services\\([^\\]+)\\parameters")
    local l_0_2 = (MpCommon.QueryPersistContext)(l_0_1, "NewServiceCreation")
    if not l_0_2 then
      (MpCommon.AppendPersistContext)(l_0_1, "NewServiceCreation", 0)
    end
    local l_0_3 = (sysio.GetFileLastWriteTime)(l_0_0)
    if ((sysio.GetLastResult)()).Success and l_0_3 ~= 0 then
      l_0_3 = l_0_3 / 10000000 - 11644473600
      local l_0_4 = (MpCommon.GetCurrentTimeT)()
      if l_0_4 < l_0_3 or l_0_4 - (l_0_3) > 600 then
        return mp.CLEAN
      end
      bm_AddRelatedFileFromCommandLine(l_0_0)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

