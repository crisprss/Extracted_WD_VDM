-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1681.luac 

-- params : ...
-- function num : 0
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
    local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
    if ((string.match)(l_0_0, "%%temp%%\\tmp%d+\\%a+%.exe$") or (string.match)(l_0_0, "%%temp%%\\{%x+%-%x+%-%x+%-%x+%-%x+}\\%a+%.exe$")) and (string.match)(l_0_0, "\\[b-t][aeiou][b-t][aeiou]%a+%.exe$") then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

