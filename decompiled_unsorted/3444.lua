-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3444.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) then
  (mp.set_mpattribute)("MpInternal_researchdata=newlyCreated=" .. "true")
end
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSDEVICEPATH)
local l_0_2 = (MpCommon.PathToWin32Path)(l_0_1)
if l_0_2 == nil or l_0_0 == nil then
  return mp.CLEAN
end
if l_0_2 == "" or l_0_0 == "" then
  return mp.CLEAN
end
local l_0_3 = l_0_2 .. "\\" .. l_0_0
;
(mp.set_mpattribute)("MpInternal_researchdata=parentProcessPath=" .. l_0_3)
local l_0_4 = (MpCommon.GetOriginalFileName)(l_0_3)
local l_0_5 = ""
if l_0_4 == nil or l_0_4 == "" then
  local l_0_6 = Get_file_versionInfo(l_0_3)
  if l_0_6 == nil or next(l_0_6) == nil then
    (mp.set_mpattribute)("MpInternal_researchdata=ERRORS=" .. "Failed to extract file verinfo")
    local l_0_9, l_0_10 = (MpCommon.StringRegExpSearch)("(proc|handle|tcpview|winobj|logonsessions|tcpvcon|ir_lsess)", (string.lower)(l_0_0))
    if l_0_9 == true then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
  do
    do
      l_0_4 = l_0_6.OriginalFilename
      l_0_5 = l_0_6.InternalName
      l_0_4 = (string.lower)(l_0_4)
      l_0_5 = (string.lower)(l_0_5)
      if l_0_4 ~= nil and l_0_4 ~= "" then
        local l_0_7 = MpCommon.StringRegExpSearch
        local l_0_8 = "(procexp|handle|tcpview|winobj|logonsessions|tcpvcon)"
        l_0_7 = l_0_7(l_0_8, l_0_4)
        if l_0_7 == true then
          return mp.CLEAN
        end
        ;
        (mp.set_mpattribute)("MpInternal_researchdata=parentProcessOFN=" .. l_0_4)
      else
        do
          do
            if l_0_5 ~= nil and l_0_5 ~= "" then
              local l_0_11, l_0_12 = (MpCommon.StringRegExpSearch)("(process explorer|handle|tcpview|winobj|logonsessions|tcpvcon)", l_0_5)
              if l_0_11 == true then
                return mp.CLEAN
              end
              ;
              (mp.set_mpattribute)("MpInternal_researchdata=parentProcessInternalName=" .. l_0_5)
            end
            return mp.INFECTED
          end
        end
      end
    end
  end
end

