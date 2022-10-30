-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3023.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if #l_0_0 < 5 then
  return mp.CLEAN
end
local l_0_1 = nil
local l_0_2 = (string.sub)(l_0_0, -5)
if l_0_2 == ".xlsb" then
  l_0_1 = "XLSBFile"
else
  if l_0_2 == ".xltm" then
    l_0_1 = "XLTMFile"
  else
    return mp.CLEAN
  end
end
if (mp.get_mpattribute)("RPF:TopLevelFile") then
  (mp.set_mpattribute)("Lua:IOAVTopLevel" .. l_0_1)
  ;
  (mp.set_mpattribute)("//Lua:GIOAVTopLevel" .. l_0_1)
else
  if not (mp.get_mpattribute)("//Lua:GIOAVFirst" .. l_0_1 .. "InContainer") then
    (mp.set_mpattribute)("Lua:IOAVFirst" .. l_0_1 .. "InContainer")
    ;
    (mp.set_mpattribute)("//Lua:GIOAVFirst" .. l_0_1 .. "InContainer")
  end
end
return mp.CLEAN

