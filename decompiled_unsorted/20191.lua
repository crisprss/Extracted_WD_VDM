-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20191.luac 

-- params : ...
-- function num : 0
do
  if (mp.get_mpattribute)("LowFiJSChildFileHasIOAVURL") then
    local l_0_0 = (string.lower)((mp.getfilename)())
    if l_0_0 == nil then
      return mp.CLEAN
    end
    if (string.match)(l_0_0, "edge") ~= nil or (string.match)(l_0_0, "chrome") ~= nil or (string.match)(l_0_0, "firefox") ~= nil or (string.match)(l_0_0, "download") ~= nil then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
  return mp.CLEAN
end

