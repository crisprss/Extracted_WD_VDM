-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/79.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.IOAVGetDownloadUrl)()
if l_0_0:find("cdn.discordapp.com/attachments/", 1, true) then
  local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  local l_0_2 = "IOAVHasDiscordUrl"
  local l_0_3 = (MpCommon.QueryPersistContext)(l_0_1, l_0_2)
  if not l_0_3 then
    (MpCommon.AppendPersistContext)(l_0_1, l_0_2, 100)
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

