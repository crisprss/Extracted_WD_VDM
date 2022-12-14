-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3557.luac 

-- params : ...
-- function num : 0
(mp.readprotection)(false)
local l_0_0 = (mp.getfilesize)()
if l_0_0 <= 20481 or l_0_0 > 131072 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)(4096, l_0_0 - 4097)
l_0_1 = (string.lower)(l_0_1)
for l_0_5 in (string.gmatch)(l_0_1, "([%w%s%.\"/:%-%(]+)") do
  if l_0_5 ~= nil and l_0_5 ~= "" and (string.len)(l_0_5) > 5 then
    if (string.match)(l_0_5, "%d%d%d+%.png") then
      (mp.set_mpattribute)("Lua:SuspiciousPNGinExcel")
    else
      if (string.match)(l_0_5, "please click \"enable content\"") then
        (mp.set_mpattribute)("Lua:SuspiciousEnableContent")
      else
        if (string.match)(l_0_5, "%w%w+%.exe") then
          if (string.find)(l_0_5, "excel.exe", 1, true) == nil then
            (mp.set_mpattribute)("Lua:SuspiciousExeinExcel")
          end
          if (string.find)(l_0_5, "regsvr32.exe", 1, true) then
            (mp.set_mpattribute)("Lua:SuspiciousRegsvr32inExcel")
          end
          if (string.find)(l_0_5, "rundll32.exe", 1, true) then
            (mp.set_mpattribute)("Lua:SuspiciousRundll32inExcel")
          end
          if (string.find)(l_0_5, "powershell", 1, true) ~= nil then
            if (string.len)(l_0_5) > 20 then
              (mp.vfo_add_buffer)(l_0_5, "[ST]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
            end
            ;
            (mp.set_mpattribute)("Lua:SuspiciousPowerShellCmdinExcel")
          end
          if (string.find)(l_0_5, "iex", 1, true) ~= nil then
            (mp.set_mpattribute)("Lua:SuspiciousPowerShellIEXinExcel")
          end
          if (string.find)(l_0_5, "curl", 1, true) ~= nil then
            (mp.set_mpattribute)("Lua:SuspiciousCRULinExcel")
          end
        else
          if (string.match)(l_0_5, "powershell") then
            if (string.len)(l_0_5) > 20 then
              (mp.vfo_add_buffer)(l_0_5, "[ST]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
            end
            ;
            (mp.set_mpattribute)("Lua:SuspiciousPowerShellCmdinExcel")
            if (string.find)(l_0_5, "iex", 1, true) ~= nil then
              (mp.set_mpattribute)("Lua:SuspiciousPowerShellIEXinExcel")
            end
            if (string.find)(l_0_5, "curl", 1, true) ~= nil then
              (mp.set_mpattribute)("Lua:SuspiciousCRULinExcel")
            end
          else
            if (string.match)(l_0_5, "frombase64string") then
              (mp.set_mpattribute)("Lua:SuspiciousB64inExcel.S001")
            else
              if (string.match)(l_0_5, "io%.memorystream") then
                (mp.set_mpattribute)("Lua:SuspiciousStreaminExcel.S001")
              else
                if (string.match)(l_0_5, "reflection%.assembly") then
                  (mp.set_mpattribute)("Lua:SuspiciousReflectioninExcel.S001")
                else
                  if (string.match)(l_0_5, "new%-object") then
                    (mp.set_mpattribute)("Lua:SuspiciousObjectinExcel.S001")
                  else
                    if (string.match)(l_0_5, "h4siaaaa") then
                      (mp.set_mpattribute)("Lua:SuspiciousGZB64inExcel.S001")
                    else
                      if (string.match)(l_0_5, "%.org/%w+%.ps") then
                        (mp.set_mpattribute)("Lua:SuspiciousPSinExcel")
                      else
                        if (string.match)(l_0_5, "urldownloadtofile") or (string.match)(l_0_5, "createdirectory") then
                          (mp.set_mpattribute)("Lua:SuspiciousAPIinExcel")
                        else
                          if (string.match)(l_0_5, "excel 4.0") then
                            (mp.set_mpattribute)("Lua:Excel40")
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
return mp.CLEAN

