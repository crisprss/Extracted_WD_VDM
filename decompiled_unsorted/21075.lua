-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21075.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p2
  if l_0_0 ~= nil and (string.len)(l_0_0) > 3 then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.find)(l_0_1, "win32_release.dll", 1, true) ~= nil or (string.find)(l_0_1, "x64_release.dll", 1, true) ~= nil or (string.find)(l_0_1, "agent_dll.dll", 1, true) ~= nil or (string.find)(l_0_1, "umep", 1, true) ~= nil or (string.find)(l_0_1, "vfep", 1, true) ~= nil then
      bm_AddRelatedFileFromCommandLine(l_0_0)
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

