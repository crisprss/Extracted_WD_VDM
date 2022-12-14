-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3324.luac 

-- params : ...
-- function num : 0
if mp.HEADERPAGE_SZ < 128 or mp.FOOTERPAGE_SZ < 22 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 1) ~= 67324752 then
  return mp.CLEAN
end
local l_0_0 = (mp.readu_u16)(headerpage, 11)
local l_0_1 = (mp.readu_u16)(headerpage, 13)
local l_0_2 = (MpCommon.DosTimeToFileTime)(l_0_0, l_0_1)
if l_0_2 == 0 then
  return mp.CLEAN
end
local l_0_3 = (MpCommon.TimeTToFileTime)((MpCommon.GetCurrentTimeT)())
if l_0_2 < l_0_3 then
  local l_0_4 = 864000000000
  local l_0_5 = l_0_3 - l_0_2
  if l_0_5 <= 5 * l_0_4 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastFiveDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastFiveDays")
    end
  end
  if l_0_5 <= 10 * l_0_4 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastTenDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastTenDays")
    end
  end
  if l_0_5 <= 30 * l_0_4 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastThirtyDays")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastThirtyDays")
    end
  end
  if l_0_5 <= 365 * l_0_4 then
    if (mp.get_mpattribute)("SCPT:JarFile") then
      (mp.set_mpattribute)("//Lua:JarTimeStampLastYear")
    else
      ;
      (mp.set_mpattribute)("//Lua:ZipTimeStampLastYear")
    end
  end
end
do
  return mp.CLEAN
end

