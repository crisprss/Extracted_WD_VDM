-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3721.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
if not (string.find)(l_0_0, "->", 1, true) ~= nil then
  return mp.CLEAN
end
if not (string.find)(l_0_0, "^/Users/.-/Downloads/", 1, false) ~= nil then
  return mp.CLEAN
end
local l_0_9 = nil
local l_0_10 = nil
if not #split((string.gsub)(l_0_0, "->", "|"), "|") == 2 then
  return mp.CLEAN
end
do
  local l_0_14 = nil
  if not (string.find)((split((string.gsub)(l_0_0, "->", "|"), "|"))[2], "/", 1, true) == nil then
    return mp.CLEAN
  end
  do return mp.INFECTED end
  -- DECOMPILER ERROR: 8 unprocessed JMP targets
end

