-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1500.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[14]).matched and (this_sigattrlog[15]).matched and (this_sigattrlog[16]).matched and (this_sigattrlog[17]).matched and (this_sigattrlog[18]).matched and (this_sigattrlog[19]).matched then
  local l_0_0 = (this_sigattrlog[14]).utf8p1
  local l_0_1 = (this_sigattrlog[15]).utf8p1
  local l_0_2 = (this_sigattrlog[15]).utf8p2
  local l_0_3 = (this_sigattrlog[16]).utf8p1
  local l_0_4 = (this_sigattrlog[17]).utf8p1
  local l_0_5 = (this_sigattrlog[18]).utf8p1
  local l_0_6 = (this_sigattrlog[18]).utf8p2
  local l_0_7 = (this_sigattrlog[19]).utf8p1
  if l_0_0 == nil or l_0_1 == nil or l_0_2 == nil or l_0_3 == nil or l_0_4 == nil or l_0_5 == nil or l_0_6 == nil or l_0_7 == nil then
    return mp.CLEAN
  end
  if l_0_1 ~= l_0_3 or l_0_5 ~= l_0_7 then
    return mp.CLEAN
  end
  if (string.len)(l_0_0) < (string.len)(l_0_2) or (string.len)(l_0_4) < (string.len)(l_0_6) then
    return mp.CLEAN
  end
  if (string.find)(l_0_0, l_0_2, 1, true) == nil or (string.find)(l_0_4, l_0_6, 1, true) == nil then
    return mp.CLEAN
  end
  local l_0_8 = (string.match)(l_0_0, "[^\\]+$")
  local l_0_9 = (string.match)(l_0_4, "[^\\]+$")
  local l_0_10, l_0_11 = (string.gsub)(l_0_8, "%.", "")
  local l_0_12, l_0_13 = (string.gsub)(l_0_9, "%.", "")
  if l_0_11 < 2 or l_0_13 < 2 then
    return mp.CLEAN
  end
  local l_0_14 = (string.match)(l_0_2, "[^.]+$")
  local l_0_15 = (string.match)(l_0_6, "[^.]+$")
  local l_0_16 = (string.match)(l_0_0, "[^.]+$")
  local l_0_17 = (string.match)(l_0_4, "[^.]+$")
  if l_0_14 == nil or l_0_15 == nil or l_0_16 == nil or l_0_17 == nil then
    return mp.CLEAN
  end
  if (string.len)(l_0_16) < 4 or l_0_14 == l_0_16 or l_0_15 == l_0_17 then
    return mp.CLEAN
  end
  if l_0_16 ~= l_0_17 then
    return mp.CLEAN
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

