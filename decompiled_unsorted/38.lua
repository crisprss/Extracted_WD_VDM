-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/38.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = {}
  l_0_1["acrobat reader"] = ""
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
  l_0_2 = (string.lower)(l_0_2)
  local l_0_3 = l_0_1[l_0_2]
  if l_0_3 and ((mp.get_mpattribute)("BM_MACHO64_FILE") or (mp.get_mpattribute)("BM_MACHO32_FILE")) then
    local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if (string.find)(l_0_4, "/applications/adobe acrobat reader dc.app/contents", 1, true) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

