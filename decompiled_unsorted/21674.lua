-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21674.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if (l_0_0 == "odbcconf.exe" or l_0_0 == "explorer.exe") and (mp.getfilesize)() <= 4096 then
  local l_0_1 = (string.lower)(tostring(headerpage))
  local l_0_2 = l_0_1:gmatch("regsvr%s+([%a%d\\.]*)")
  local l_0_3 = 5
  local l_0_4 = 0
  local l_0_5 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
  l_0_5 = normalize_path(l_0_5)
  for l_0_9 in l_0_2 do
    local l_0_10 = l_0_5 .. "\\" .. l_0_9
    local l_0_11 = "DllFromRsp"
    do
      do
        local l_0_12 = (MpCommon.QueryPersistContext)(l_0_10, l_0_11)
        if not l_0_12 then
          (MpCommon.AppendPersistContext)(l_0_10, l_0_11, 100)
          l_0_4 = l_0_4 + 1
        end
        if l_0_3 <= l_0_4 then
          break
        end
        -- DECOMPILER ERROR at PC67: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
  return mp.INFECTED
end
do
  return mp.CLEAN
end

