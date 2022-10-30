-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3361.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.sub)(l_0_0, -4) == ".tmp" or (string.find)(l_0_0, ".exe.") then
  return mp.CLEAN
end
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_1 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilesize)()
local l_0_3 = pehdr.NumberOfSections
local l_0_4 = (pesecs[l_0_3]).PointerToRawData
local l_0_5 = (pesecs[l_0_3]).SizeOfRawData
local l_0_6 = l_0_4 + l_0_5
if l_0_2 <= l_0_6 then
  return mp.CLEAN
end
local l_0_7 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
if l_0_7 <= l_0_6 then
  return mp.CLEAN
end
local l_0_8 = 0
if l_0_7 == 0 then
  l_0_8 = l_0_2 - l_0_6
else
  if l_0_6 < l_0_7 then
    l_0_8 = l_0_7 - l_0_6
  else
    return mp.CLEAN
  end
end
if (l_0_8) * 100 / l_0_2 > 90 then
  (mp.readprotection)(false)
  local l_0_9 = 0
  for l_0_13 = 1, 3 do
    local l_0_14 = l_0_6 + (l_0_8) / 4 * l_0_13
    if l_0_2 <= l_0_14 + 256 then
      return mp.CLEAN
    end
    local l_0_15 = (mp.readfile)(l_0_14, 256)
    if (crypto.ComputeEntropy)(l_0_15) == 0 then
      l_0_9 = l_0_9 + 1
    end
  end
  if l_0_9 == 3 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

