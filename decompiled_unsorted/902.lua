-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/902.luac 

-- params : ...
-- function num : 0
do
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
  if l_0_0 ~= nil then
    local l_0_1 = (string.lower)(l_0_0)
    if (string.match)(l_0_1, "\\users\\[^\\]+\\appdata\\local\\temp\\rar$.+") then
      (mp.set_mpattribute)("Lua:CplWinrarExtracted.A")
      return mp.INFECTED
    end
    if l_0_1:find("\\temp\\7zo", 1, true) ~= nil then
      (mp.set_mpattribute)("Lua:Cpl7ZipExtracted.A")
      return mp.INFECTED
    end
    if l_0_1:find("\\temp\\wz[0-9a-f][0-9a-f][0-9a-f][0-9a-f]$") ~= nil then
      (mp.set_mpattribute)("Lua:CplWinZipExtracted.A")
      return mp.INFECTED
    end
    local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
    if l_0_2 == "7zg.exe" and (l_0_1:find("\\desktop\\", 1, true) ~= nil or l_0_1:find("\\downloads\\", 1, true) ~= nil) then
      (mp.set_mpattribute)("Lua:Cpl7ZipExtracted.B")
    end
    if l_0_2 == "explorer.exe" then
      local l_0_3, l_0_4 = l_0_1:find, l_0_1
      l_0_3 = l_0_3(l_0_4, nil ~= "\\temp\\temp[0-9]_.+%.zip$")
      if l_0_3 then
        l_0_3 = mp
        l_0_3 = l_0_3.set_mpattribute
        l_0_4 = "Lua:CplExplorerZIPExtracted.A"
        l_0_3(l_0_4)
        l_0_3 = mp
        l_0_3 = l_0_3.INFECTED
        return l_0_3
      end
    end
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR: 2 unprocessed JMP targets
end

