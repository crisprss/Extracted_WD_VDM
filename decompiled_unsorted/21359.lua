-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21359.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:TopLevelFile") then
  (mp.set_mpattribute)("Lua:IOAVTopLevelHTMLFile")
  ;
  (mp.set_mpattribute)("//Lua:GIOAVTopLevelHTMLFile")
else
  if not (mp.get_mpattribute)("//Lua:GIOAVFirstHTMLFileInContainer") then
    local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
    if l_0_0:find(".crx->", 1, true) == nil and l_0_0:find(".apk->", 1, true) == nil and l_0_0:find(".msi->", 1, true) == nil and l_0_0:find(".xpi->", 1, true) == nil then
      (mp.set_mpattribute)("Lua:IOAVFirstHTMLFileInContainer")
      ;
      (mp.set_mpattribute)("//Lua:GIOAVFirstHTMLFileInContainer")
    end
  end
end
do
  return mp.CLEAN
end

