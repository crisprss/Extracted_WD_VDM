-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12440.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("AllowList:documentation_word_macro_n.dot") then
  return mp.CLEAN
end
return mp.INFECTED

