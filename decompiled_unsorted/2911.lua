-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2911.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true then
  local l_0_0 = (mp.GetMOTWZone)()
  if l_0_0 ~= nil and l_0_0 >= 3 then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if l_0_1 ~= nil and (string.len)(l_0_1) >= 4 then
      local l_0_2 = (string.sub)(l_0_1, -4)
      local l_0_3 = (string.lower)((MpCommon.PathToWin32Path)(l_0_1))
      if l_0_2 == ".iso" then
        (MpCommon.AppendPersistContext)(l_0_3, "IsoWithMotw", 5)
      else
        if l_0_2 == ".vhd" then
          (MpCommon.AppendPersistContext)(l_0_3, "VhdWithMotw", 5)
        else
          if l_0_2 == ".img" then
            (MpCommon.AppendPersistContext)(l_0_3, "ImgWithMotw", 5)
          end
        end
      end
    end
    do
      do
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

