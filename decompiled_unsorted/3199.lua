-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3199.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((Remediation.Threat).Name)
if (string.match)(l_0_0, "poshevin%.[af]") then
  local l_0_1, l_0_2 = pcall(MpCommon.RollingQueueQuery, "PoshevinRelatedRegistries")
  local l_0_3, l_0_4 = pcall(MpCommon.RollingQueueQuery, "PoshevinRelatedFiles")
  if l_0_1 and l_0_2 ~= nil and type(l_0_2) == "table" then
    for l_0_8 in pairs(l_0_2) do
      local l_0_9 = (string.lower)(tostring((l_0_2[l_0_8]).key))
      local l_0_10, l_0_11 = l_0_9:match("(.-\\software\\classes)\\(.*)")
      local l_0_12 = (sysio.RegOpenKey)(l_0_10)
      if l_0_12 then
        local l_0_13 = pcall(sysio.DeleteRegKey, l_0_12, l_0_11)
        if not l_0_13 then
          local l_0_14 = "hkcu\\software\\classes\\" .. l_0_11
          l_0_13 = pcall(Remediation.BtrDeleteRegKey, l_0_14)
        end
      end
    end
  end
  do
    if l_0_3 and l_0_4 ~= nil and type(l_0_4) == "table" then
      for l_0_18 in pairs(l_0_4) do
        local l_0_19 = tostring((l_0_4[l_0_18]).key)
        if l_0_19 and (sysio.IsFileExists)(l_0_19) then
          (sysio.DeleteFile)(l_0_19)
        else
          l_0_19 = "\'" .. l_0_19 .. "\'"
          if (sysio.IsFileExists)(l_0_19) then
            (sysio.DeleteFile)(l_0_19)
          else
            pcall(Remediation.BtrDeleteFile, l_0_19)
          end
        end
      end
    end
  end
end

