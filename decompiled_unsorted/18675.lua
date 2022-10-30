-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18675.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[5]).utf8p2)
    ;
    (mp.ReportLowfi)(l_0_0, 694214086)
    ;
    (bm.add_related_file)(l_0_0)
    return mp.INFECTED
  end
  return mp.CLEAN
end

