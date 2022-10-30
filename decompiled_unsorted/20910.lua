-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20910.luac 

-- params : ...
-- function num : 0
local l_0_4 = nil
local l_0_5 = false
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  local l_0_0, l_0_1, l_0_2, l_0_3 = 0
else
  do
    -- DECOMPILER ERROR at PC34: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[5]).matched or (this_sigattrlog[5]).utf8p2 == nil or not isIEXfound(l_0_4) then
      return mp.CLEAN
    end
    if l_0_4:len() > 400 then
      return mp.CLEAN
    end
    local l_0_6 = nil
    l_0_5 = (MpCommon.StringRegExpSearch)("(?:gp|get-itemproperty).{0,10}(?:hkcu|hklm)", l_0_4)
    if l_0_5 then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

