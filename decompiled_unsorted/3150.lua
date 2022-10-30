-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3150.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("applicationframe", 1, true) or l_0_0:find("wmiprvsd", 1, true) or l_0_0:find("wuapi", 1, true) or l_0_0:find("propsys", 1, true) or l_0_0:find("wbemprox", 1, true) or l_0_0:find("actioncenter", 1, true) then
  local l_0_1 = {}
  l_0_1.ShareProviderInitialize = ""
  l_0_1.ShareProviderUninitialize = ""
  l_0_1.ShareProviderShareAdd = ""
  l_0_1.ShareProviderShareSetInfo = ""
  l_0_1.ShareProviderShareDel = ""
  local l_0_2, l_0_3 = (pe.get_exports)()
  if l_0_2 > 3 then
    for l_0_7 = 1, l_0_2 do
      if l_0_1[(pe.mmap_string_rva)((l_0_3[l_0_7]).namerva, 64)] then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

