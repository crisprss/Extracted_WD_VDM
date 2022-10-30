-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3211.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = GetRollingQueue("PoshevinRelatedFiles")
if l_0_1 ~= nil and type(l_0_1) == "table" then
  for l_0_5 in pairs(l_0_1) do
    local l_0_6 = tostring((l_0_1[l_0_5]).key)
    local l_0_7 = l_0_6:match("\\.-(%..+)$")
    if l_0_7 and #l_0_7 > 4 then
      local l_0_8 = (sysio.RegExpandUserKey)("HKCU\\Software\\Classes")
      for l_0_12,l_0_13 in pairs(l_0_8) do
        local l_0_14 = l_0_13 .. "\\" .. l_0_7
        local l_0_15 = (sysio.RegOpenKey)(l_0_14)
        if l_0_15 then
          local l_0_16 = (sysio.GetRegValueAsString)(l_0_15, "")
          if l_0_16 then
            local l_0_17 = l_0_13 .. "\\" .. l_0_16
            local l_0_18 = l_0_17 .. "\\shell\\open\\command"
            local l_0_19 = (sysio.RegOpenKey)(l_0_18)
            local l_0_20 = (sysio.GetRegValueAsString)(l_0_19, "")
            do
              do
                if l_0_20 then
                  local l_0_21 = (string.lower)(l_0_20)
                  if l_0_21:match("powershell.+aescrypto.+base64") then
                    l_0_0 = true
                  end
                end
                if l_0_0 then
                  AppendToRollingQueue("PoshevinRelatedRegistries", l_0_17, nil, 5000)
                  AppendToRollingQueue("PoshevinRelatedRegistries", l_0_14, nil, 5000)
                end
                -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out DO_STMT

                -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_STMT

                -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_THEN_STMT

                -- DECOMPILER ERROR at PC94: LeaveBlock: unexpected jumping out IF_STMT

              end
            end
          end
        end
      end
    end
  end
end
do
  if l_0_0 then
    AddResearchData("BM", true)
    return mp.INFECTED
  end
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC110: Confused about usage of register R4 for local variables in 'ReleaseLocals'

end

