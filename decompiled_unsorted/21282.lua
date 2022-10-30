-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21282.luac 

-- params : ...
-- function num : 0
do
  if (versioning.GetEngineBuild)() >= 16700 then
    local l_0_0 = (versioning.GetOrgID)()
    if l_0_0 and (string.lower)(l_0_0) == "d7c7c745-195f-4223-9c7a-99fb420fd000" then
      return mp.CLEAN
    end
  end
  local l_0_1 = nil
  if (this_sigattrlog[2]).matched then
    l_0_1 = (string.lower)((this_sigattrlog[2]).utf8p1)
  else
    if (this_sigattrlog[3]).matched then
      l_0_1 = (string.lower)((this_sigattrlog[3]).utf8p1)
    end
  end
  if l_0_1 ~= nil then
    local l_0_2 = (string.sub)(l_0_1, -4)
    local l_0_3 = "|.asp|aspx|ashx|asmx|"
    if (string.find)(l_0_3, l_0_2, 1, true) then
      if (sysio.IsFileExists)(l_0_1) then
        (bm.add_related_file)(l_0_1)
      end
      return mp.INFECTED
    end
  end
  do
    return mp.CLEAN
  end
end

