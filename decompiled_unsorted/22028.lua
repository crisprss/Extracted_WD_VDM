-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22028.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_0) do
  if l_0_6.image_path ~= nil and (string.find)((string.lower)(l_0_6.image_path), "jobagent.host.exe", -17, true) then
    return mp.CLEAN
  end
end
local l_0_7 = nil
if (this_sigattrlog[1]).matched then
  l_0_7 = (string.lower)((this_sigattrlog[1]).utf8p2)
else
  if (this_sigattrlog[2]).matched then
    l_0_7 = (string.lower)((this_sigattrlog[2]).utf8p2)
  else
    if (this_sigattrlog[3]).matched then
      l_0_7 = (string.lower)((this_sigattrlog[3]).utf8p2)
    else
      if (this_sigattrlog[4]).matched then
        l_0_7 = (string.lower)((this_sigattrlog[4]).utf8p2)
      end
    end
  end
end
if not (string.find)(l_0_7, "\\inetpub\\wwwroot\\", 1, true) and not (string.match)(l_0_7, "\\microsoft\\exchange server\\v%d%d\\") and not (string.match)(l_0_7, "\\microsoft shared\\web server extensions\\%d%d\\") then
  return mp.CLEAN
end
local l_0_8 = nil
if (this_sigattrlog[5]).matched then
  l_0_8 = (string.lower)((this_sigattrlog[5]).utf8p1)
else
  if (this_sigattrlog[6]).matched then
    l_0_8 = (string.lower)((this_sigattrlog[6]).utf8p1)
  else
    if (this_sigattrlog[7]).matched then
      l_0_8 = (string.lower)((this_sigattrlog[7]).utf8p1)
    else
      if (this_sigattrlog[8]).matched then
        l_0_8 = (string.lower)((this_sigattrlog[8]).utf8p1)
      end
    end
  end
end
if l_0_8 ~= nil then
  local l_0_9 = (string.sub)(l_0_8, -4)
  local l_0_10 = "|.asp|aspx|ashx|asmx|"
  if (string.find)(l_0_10, l_0_9, 1, true) then
    if (sysio.IsFileExists)(l_0_8) then
      (bm.add_related_file)(l_0_8)
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

