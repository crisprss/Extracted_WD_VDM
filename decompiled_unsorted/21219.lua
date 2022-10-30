-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21219.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
local l_0_1 = "ScriptDroppedByCurl"
if l_0_0 == "wscript.exe" then
  local l_0_2 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
  if (MpCommon.QueryPersistContext)(l_0_2, l_0_1) then
    (mp.set_mpattribute)("Lua:Context/CurlDropWscriptLoad")
  end
else
  do
    do
      if l_0_0 == "cscript.exe" then
        local l_0_3 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
        if (MpCommon.QueryPersistContext)(l_0_3, l_0_1) then
          (mp.set_mpattribute)("Lua:Context/CurlDropCscriptLoad")
        end
      end
      return mp.CLEAN
    end
  end
end

