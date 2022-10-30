-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3730.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = (mp.getfilesize)()
local l_0_2 = 25
if l_0_2 < l_0_1 - l_0_0.match_offset then
  (mp.readprotection)(false)
  local l_0_3 = (mp.readfile)(l_0_0.match_offset, l_0_2)
  if (string.find)(l_0_3, "/usr/bin/env", 1, true) ~= nil or (string.find)(l_0_3, "/usr/bin/ruby", 1, true) ~= nil or (string.find)(l_0_3, "/usr/bin/osascript", 1, true) ~= nil then
    return mp.CLEAN
  end
end
do
  local l_0_4 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_4 == nil then
    return mp.CLEAN
  end
  if (string.find)(l_0_4, ".app/contents/macos", 1, true) ~= nil then
    return mp.INFECTED
  end
  return mp.CLEAN
end

