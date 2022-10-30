-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/81.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") and l_0_0 < 1048576 then
  local l_0_1 = nil
  if l_0_0 <= 4096 then
    l_0_1 = tostring(headerpage)
  else
    ;
    (mp.readprotection)(false)
    l_0_1 = (mp.readfile)(0, (mp.getfilesize)())
  end
  do
    if l_0_1:match("regsvr32[.%a]*%s+([%a%d\\.]*)") == nil then
      local l_0_2 = l_0_1:match("rundll32[.%a]*%s+([%a%d\\.]*)")
    end
    -- DECOMPILER ERROR at PC40: Confused about usage of register: R2 in 'UnsetPending'

    if l_0_2 ~= nil then
      local l_0_3 = nil
      local l_0_4 = normalize_path(((mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)):match("(.*)\\") .. "\\" .. l_0_3)
      local l_0_5 = nil
      if not (MpCommon.QueryPersistContext)(l_0_4, "DllLoadedViaLnk") then
        (MpCommon.AppendPersistContext)(l_0_4, l_0_5, 100)
      end
    end
    do
      do
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

