-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3241.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 ~= nil then
  local l_0_1 = l_0_0.FileOriginalName
  if l_0_1 == "CONHOST.EXE" then
    return mp.CLEAN
  end
  if l_0_1 == "IEXPLORE.EXE" then
    return mp.CLEAN
  end
  local l_0_2 = (mp.getfilesize)()
  if l_0_2 > 3400000 and l_0_2 < 6400000 then
    (mp.set_mpattribute)("Lua:RcsAgentSize")
  end
  local l_0_3 = l_0_0.CompanyName
  if l_0_3 == "Adobe Inc." then
    (mp.set_mpattribute)("Lua:SuspCompanySignedVmp.Adobe")
    return mp.INFECTED
  end
  if l_0_3 == "Oracle Corporation" then
    (mp.set_mpattribute)("Lua:SuspCompanySignedVmp.Oracle")
    return mp.INFECTED
  end
  if l_0_3 == "Microsoft Corporation" then
    (mp.set_mpattribute)("Lua:SuspCompanySignedVmp.MsftCorp")
    return mp.INFECTED
  end
  if l_0_3 == "Zoom Video Communications, Inc." then
    (mp.set_mpattribute)("Lua:SuspCompanySignedVmp.Zoom")
    return mp.INFECTED
  end
  if l_0_3:find("Microsoft", 1, true) and l_0_3:find("Operating System", 1, true) then
    (mp.set_mpattribute)("Lua:SuspCompanySignedVmp.MfstOs")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

