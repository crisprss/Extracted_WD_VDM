-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3490.luac 

-- params : ...
-- function num : 0
local l_0_0 = ""
if (mp.get_mpattribute)("//SCRIPT:ContentTypeMacroSheet") then
  l_0_0 = "OXML"
else
  if (mp.get_mpattribute)("AGGR:XlsHasMacroSheet") then
    l_0_0 = "OLE"
  else
    return mp.CLEAN
  end
end
local l_0_1 = "Lua:XL4" .. l_0_0
;
(mp.set_mpattribute)("//Lua:XL4MacroFile")
local l_0_2 = ""
if (sysio.RegOpenKey)("HKCU\\Software\\Microsoft\\Office\\16.0\\Excel") ~= nil then
  l_0_2 = "16.0"
else
  if (sysio.RegOpenKey)("HKCU\\Software\\Microsoft\\Office\\15.0\\Excel") ~= nil then
    l_0_2 = "15.0"
  else
    local l_0_3, l_0_4 = (sysio.RegOpenKey)("HKCU\\Software\\Microsoft\\Office\\14.0\\Excel")
    if l_0_3 ~= nil then
      l_0_2 = "14.0"
    else
      l_0_4 = mp
      l_0_4 = l_0_4.set_mpattribute
      l_0_4(l_0_1 .. "MacroDisabled.Z")
      l_0_4 = mp
      l_0_4 = l_0_4.CLEAN
      return l_0_4
    end
  end
end
do
  local l_0_5 = nil
  if (sysio.RegOpenKey)("HKCU\\Software\\Microsoft\\Office\\" .. l_0_2 .. "\\Excel\\Security") ~= nil then
    if l_0_2 == "16.0" then
      local l_0_6 = nil
      if (sysio.GetRegValueAsDword)((sysio.RegOpenKey)("HKCU\\Software\\Microsoft\\Office\\" .. l_0_2 .. "\\Excel\\Security"), "XL4MacroWarningFollowVBA") == 0 then
        (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.A")
        return mp.CLEAN
      end
      local l_0_7 = nil
      if (sysio.GetRegValueAsDword)(l_0_6, "XL4MacroOff") == 1 then
        (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.D")
        return mp.CLEAN
      end
    end
    do
      -- DECOMPILER ERROR at PC108: Confused about usage of register: R4 in 'UnsetPending'

      do
        local l_0_8 = nil
        if (sysio.GetRegValueAsDword)(l_0_6, "VBAWarnings") == 3 then
          (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.B")
          return mp.CLEAN
        end
        if (sysio.GetRegValueAsDword)(l_0_6, "VBAWarnings") == 4 then
          (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.C")
          return mp.CLEAN
        end
        local l_0_9 = nil
        if (sysio.RegOpenKey)("HKCU\\Software\\Policies\\Microsoft\\office\\" .. l_0_2 .. "\\excel\\security") ~= nil then
          if l_0_2 == "16.0" then
            local l_0_10 = nil
            if (sysio.GetRegValueAsDword)((sysio.RegOpenKey)("HKCU\\Software\\Policies\\Microsoft\\office\\" .. l_0_2 .. "\\excel\\security"), "XL4MacroWarningFollowVBA") == 0 then
              (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.E")
              return mp.CLEAN
            end
            local l_0_11 = nil
            if (sysio.GetRegValueAsDword)(l_0_10, "XL4MacroOff") == 1 then
              (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.H")
              return mp.CLEAN
            end
          end
          do
            -- DECOMPILER ERROR at PC178: Confused about usage of register: R5 in 'UnsetPending'

            do
              local l_0_12 = nil
              if (sysio.GetRegValueAsDword)(l_0_10, "VBAWarnings") == 3 then
                (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.F")
                return mp.CLEAN
              end
              if (sysio.GetRegValueAsDword)(l_0_10, "VBAWarnings") == 4 then
                (mp.set_mpattribute)(l_0_1 .. "MacroDisabled.G")
                return mp.CLEAN
              end
              ;
              (mp.set_mpattribute)(l_0_1 .. "MacroEnabled.A")
              return mp.INFECTED
            end
          end
        end
      end
    end
  end
end

