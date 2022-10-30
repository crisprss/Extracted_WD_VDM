-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21212.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0:find(".png:", 1, true) then
  if (mp.get_mpattribute)("Lua:Context/FileInADS.A!commonadslist") then
    return mp.CLEAN
  end
  if l_0_0:find(":zone.id", 1, true) then
    return mp.CLEAN
  end
  if l_0_0:find(":6e53bff5-0001-412b-8407-e3aede763511", 1, true) then
    return mp.CLEAN
  end
  if l_0_0:find(":4c8cc155-6c1e-11d1-8e41-00c04fb9386d", 1, true) then
    return mp.CLEAN
  end
  if l_0_0:find(":59828bbb-3f72-4c1b-a420-b51ad66eb5d3", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

