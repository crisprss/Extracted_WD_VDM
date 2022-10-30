-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2861.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
if l_0_1 ~= nil then
  l_0_1 = (string.lower)(l_0_1)
  local l_0_2 = {}
  l_0_2["vmware.exe"] = true
  l_0_2["vmplayer.exe"] = true
  if l_0_2[l_0_1] then
    l_0_0 = true
    ;
    (mp.set_mpattribute)("Lua:FATCommonProcExcl")
  end
end
do
  local l_0_3 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if l_0_3 ~= nil and #l_0_3 > 4 and (string.sub)(l_0_3, -4) == ".flp" then
    l_0_0 = true
    ;
    (mp.set_mpattribute)("Lua:FATCommonFileNameExcl")
  end
  if l_0_0 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

