-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22093.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 500 and l_0_0 < 5242880 then
  local l_0_1 = tostring(footerpage)
  if l_0_1 == nil then
    return mp.CLEAN
  end
  local l_0_2, l_0_3 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2:find("\\cache\\", 1, true) and StringStartsWith(l_0_3, "f_") then
    return mp.CLEAN
  end
  msb_unpack = function(l_1_0, l_1_1)
  -- function num : 0_0
  return (((string.byte)(l_1_0, l_1_1, l_1_1 + 3) * 256 + l_1_0) * 256 + l_1_1) * 256 + (l_1_1 + 3)
end

  process_chunk = function(l_2_0, l_2_1, l_2_2)
  -- function num : 0_1
  if l_2_0 ~= nil and l_2_1 + 12 <= l_2_2 then
    local l_2_3 = {}
    local l_2_4 = msb_unpack(l_2_0, l_2_1)
    local l_2_5 = (msb_unpack(l_2_0, l_2_1 + 4))
    local l_2_6 = nil
    if l_2_2 - (l_2_1 + 4 + l_2_4) > 0 then
      l_2_6 = msb_unpack(l_2_0, l_2_1 + l_2_4 + 8)
      if l_2_4 > 0 then
        l_2_3.databegin = l_2_1 + 5
        l_2_3.dataend = l_2_3.databegin + l_2_4
      end
      l_2_3.next = l_2_1 + l_2_4 + 12
    end
    l_2_3.length = l_2_4
    l_2_3.type = l_2_5
    l_2_3.crc = l_2_6
    return l_2_3
  end
  do
    return nil
  end
end

  local l_0_4 = nil
  local l_0_5, l_0_6 = (string.find)(l_0_1, "IEND", 1, true)
  if l_0_5 and l_0_6 then
    l_0_4 = process_chunk(l_0_1, l_0_5 - 4, l_0_0)
  end
  if l_0_5 == nil or l_0_4 == nil then
    (mp.set_mpattribute)("Lua:PngWithoutIENDFooter")
  else
    if l_0_4.length > 0 then
      (mp.set_mpattribute)("Lua:PngWithAbnormalIENDLength")
    end
    if l_0_0 < l_0_6 + 4 then
      (mp.set_mpattribute)("Lua:PngWithDataAfterIEND")
    end
    if l_0_4.crc ~= 2923585666 then
      (mp.set_mpattribute)("Lua:PngWithAbnormalIENDCrc")
    end
  end
end
do
  return mp.INFECTED
end

