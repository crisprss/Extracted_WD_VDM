-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17424.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_0 = (mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[1]).utf8p2)
    ;
    (bm.add_related_file)(l_0_0)
  end
  return mp.INFECTED
end

