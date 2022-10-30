-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17553.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[4]).utf8p1)
    if (string.match)(l_0_0, "%.bin$") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

