-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2564.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("SCPT:Sessington.A")
do
  if #l_0_0 >= 2 then
    local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
    if l_0_1:find("about_pester", 1, true) then
      return mp.CLEAN
    else
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

