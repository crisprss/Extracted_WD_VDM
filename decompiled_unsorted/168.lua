-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/168.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[6]).matched or (this_sigattrlog[7]).matched then
  return mp.INFECTED
end
local l_0_0 = nil
if (this_sigattrlog[2]).matched then
  l_0_0 = (this_sigattrlog[2]).utf8p1
else
  if (this_sigattrlog[3]).matched then
    l_0_0 = (this_sigattrlog[3]).utf8p1
  else
    if (this_sigattrlog[4]).matched then
      l_0_0 = (this_sigattrlog[4]).utf8p1
    else
      if (this_sigattrlog[5]).matched then
        l_0_0 = (this_sigattrlog[5]).utf8p1
      end
    end
  end
end
if l_0_0 ~= nil then
  local l_0_1 = (string.sub)(l_0_0, -4)
  local l_0_2 = "|.asp|aspx|ashx|asmx|"
  if (string.find)(l_0_2, l_0_1, 1, true) == nil then
    return mp.CLEAN
  end
end
do
  return mp.INFECTED
end

