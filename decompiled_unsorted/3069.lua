-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3069.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
  if l_0_0 == nil then
    return mp.CLEAN
  end
  ;
  (mp.set_mpattribute)("Lua:NewFileContextDataPresent")
  ;
  (mp.set_mpattribute)("Lua:NewFileContextData:ProcName!" .. l_0_0)
  local l_0_1, l_0_2 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2 ~= nil then
    (mp.set_mpattribute)("Lua:NewFileContextData:FileName!" .. l_0_2)
  end
end
do
  return mp.CLEAN
end

