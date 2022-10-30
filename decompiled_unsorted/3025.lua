-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3025.luac 

-- params : ...
-- function num : 0
if pehdr.TimeDateStamp == 0 then
  local l_0_0 = (mp.getfilesize)()
  if l_0_0 < 3000000 then
    local l_0_1 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
    l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
    if l_0_1 ~= nil and l_0_1:find("c:\\windows\\system32\\", 1, true) then
      if l_0_1:find("\\driverstore\\filerepository\\", 1, true) then
        return mp.CLEAN
      end
      if l_0_1:find("\\spool\\drivers\\x64\\3\\", 1, true) then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

