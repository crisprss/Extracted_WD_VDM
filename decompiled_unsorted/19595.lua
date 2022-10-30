-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19595.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (string.match)((string.lower)((this_sigattrlog[1]).utf8p2), "start ([^%s]+)$")
    if (MpCommon.QueryPersistContext)(l_0_0, "NewServiceCreation") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

