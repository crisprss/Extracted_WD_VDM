-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18703.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
    if l_0_0:find(".vb", 1, true) then
      bm_AddRelatedFileFromCommandLine(l_0_0)
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end
