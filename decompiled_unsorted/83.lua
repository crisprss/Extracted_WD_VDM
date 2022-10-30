-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/83.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if l_0_0 == nil or (string.len)(l_0_0) < 4 then
  return mp.CLEAN
end
local l_0_1 = (string.sub)(l_0_0, -4)
if l_0_1 ~= ".lnk" then
  return mp.CLEAN
end
l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
local l_0_2 = (MpCommon.GetMountedFileBackingFilePath)(l_0_0)
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_1 = (string.lower)((string.sub)(l_0_2, -4))
if l_0_1 == ".iso" then
  (mp.set_mpattribute)("Lua:FileFromMountedDriveIso")
  local l_0_3 = (MpCommon.QueryPersistContext)(l_0_2, "IsoWithMotw")
  if l_0_3 then
    (mp.set_mpattribute)("Lua:LnkFromMountedIsoWithMotw")
  end
else
  do
    if l_0_1 == ".vhd" then
      (mp.set_mpattribute)("Lua:FileFromMountedDriveVhd")
      local l_0_4 = (MpCommon.QueryPersistContext)(l_0_2, "VhdWithMotw")
      if l_0_4 then
        (mp.set_mpattribute)("Lua:LnkFromMountedVhdWithMotw")
      end
    else
      do
        if l_0_1 == ".img" then
          (mp.set_mpattribute)("Lua:FileFromMountedDriveImg")
          local l_0_5 = (MpCommon.QueryPersistContext)(l_0_2, "ImgWithMotw")
          if l_0_5 then
            (mp.set_mpattribute)("Lua:LnkFromMountedImgWithMotw")
          end
        end
        do
          return mp.INFECTED
        end
      end
    end
  end
end

