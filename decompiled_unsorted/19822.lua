-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19822.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (this_sigattrlog[1]).utf8p2
    bm_AddRelatedFileFromCommandLine(l_0_0, nil, nil, 1)
  end
  local l_0_1 = nil
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    l_0_1 = (this_sigattrlog[2]).utf8p2
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
      l_0_1 = (this_sigattrlog[3]).utf8p2
    end
  end
  if l_0_1 ~= nil then
    bm_AddRelatedFileFromCommandLine(l_0_1, nil, nil, 1)
  end
  return mp.INFECTED
end
