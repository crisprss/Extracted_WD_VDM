-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1470.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("MpInternal_imphash=")
if l_0_0 ~= nil and #l_0_0 > 0 then
  for l_0_4,l_0_5 in ipairs(l_0_0) do
    local l_0_6 = (string.match)(l_0_5, "MpInternal_imphash=(%w+)$")
    if l_0_6 == nil then
      return mp.CLEAN
    end
    local l_0_7, l_0_8, l_0_9 = (MpCommon.AnomalyTableLookup)("ImphashTable")
    local l_0_10 = (MpCommon.AnomalyEventLookup)("ImphashTable", l_0_6, 100)
    if l_0_10 == nil then
      (MpCommon.AnomalyEventUpdate)("ImphashTable", l_0_6, 1, 1)
      if l_0_7 == nil or l_0_7 < 10080 then
        return mp.CLEAN
      end
      local l_0_11, l_0_12, l_0_13 = (MpCommon.SNidSearch)(98, l_0_6 .. "00000000")
      if l_0_11 == true and l_0_12 == "!#ImpHashCommonGlobal" then
        return mp.CLEAN
      end
      ;
      (mp.set_mpattribute)("Lua:AnomalyImphashNew")
      return mp.INFECTED
    end
    do
      do
        ;
        (MpCommon.AnomalyEventUpdate)("ImphashTable", l_0_6, l_0_10.Count + 100, 1)
        if l_0_10.UnbiasedTime > 20160 then
          (mp.set_mpattribute)("Lua:AnomalyImphashNoUpd")
          return mp.CLEAN
        end
        -- DECOMPILER ERROR at PC88: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end
return mp.CLEAN

