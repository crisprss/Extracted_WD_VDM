-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/969.luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1, l_1_2)
  -- function num : 0_0
  local l_1_3 = 0
  local l_1_4 = {}
  do
    while l_1_3 < l_1_2 do
      local l_1_5 = #l_1_4 + 1
      l_1_4[l_1_5] = (string.char)((string.byte)(l_1_0, l_1_1 + l_1_3))
      l_1_3 = l_1_3 + 2
    end
    return (table.concat)(l_1_4, "")
  end
end

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_1 = {}
  l_0_1.ucbrowserupdatercore = true
  l_0_1.hpceescheduleforwalk2 = true
  l_0_1.hpceescheduleforhp = true
  l_0_1["hpceescheduleforbid-n-buy"] = true
  l_0_1.hpceescheduleformajas = true
  l_0_1.dropboxupdatetaskmachineua = true
  l_0_1["adobe flash player updater"] = true
  l_0_1["msi task host - ledkeeper2_host"] = true
  l_0_1.ss1collectservertask = true
  local l_0_2 = 0
  local l_0_3 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_4 = (string.match)(l_0_3, "([^\\]+)$")
  l_0_4 = (string.match)(l_0_4, "(.-[^%.]+)")
  local l_0_5 = ""
  if #l_0_4 > 0 and l_0_4 then
    if l_0_1[l_0_4] == true then
      return mp.CLEAN
    end
    l_0_5 = "job:" .. l_0_4 .. ";"
    local l_0_6 = "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\Taskcache\\Tree\\" .. l_0_4
    local l_0_7 = (sysio.RegOpenKey)(l_0_6)
    if l_0_7 then
      local l_0_8 = (sysio.GetRegValueAsString)(l_0_7, "Id")
      if l_0_8 ~= nil then
        local l_0_9 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks\\" .. l_0_8
        local l_0_10 = (sysio.RegOpenKey)(l_0_9)
        if l_0_10 then
          local l_0_11 = (sysio.GetRegValueAsBinary)(l_0_10, "Actions")
          if l_0_11 and #l_0_11 > 0 then
            local l_0_12 = 1
            local l_0_13 = (mp.readu_u16)(l_0_11, l_0_12)
            l_0_12 = l_0_12 + 2
            if l_0_13 > 3 then
              return mp.CLEAN
            end
            if l_0_13 == 3 then
              l_0_2 = l_0_2 + 1
            end
            local l_0_14 = (mp.readu_u32)(l_0_11, l_0_12)
            l_0_12 = l_0_12 + 4
            local l_0_15, l_0_16 = pcall(l_0_0, l_0_11, l_0_12, l_0_14)
            if not l_0_15 then
              return mp.CLEAN
            end
            l_0_12 = l_0_12 + l_0_14
            l_0_5 = l_0_5 .. "m_content:" .. l_0_16 .. ";"
            if l_0_16 == "Author" then
              l_0_2 = l_0_2 + 1
            end
            while 1 do
              if l_0_12 < #l_0_11 - 1 then
                local l_0_17 = (mp.readu_u16)(l_0_11, l_0_12)
                l_0_12 = l_0_12 + 2
                if l_0_17 == 26214 then
                  l_0_12 = l_0_12 + 4
                  local l_0_18 = (mp.readu_u32)(l_0_11, l_0_12)
                  l_0_12 = l_0_12 + 4
                  if l_0_18 > 0 then
                    local l_0_19, l_0_20 = pcall(l_0_0, l_0_11, l_0_12, l_0_18)
                    if not l_0_19 then
                      return mp.CLEAN
                    end
                    l_0_12 = l_0_12 + l_0_18
                    if l_0_20 then
                      l_0_5 = l_0_5 .. "m_path:" .. l_0_20 .. ";"
                      if l_0_2 == 2 then
                        local l_0_21 = (sysio.GetProcessFromFileName)(l_0_20)
                        for l_0_25,l_0_26 in pairs(l_0_21) do
                          local l_0_27 = (string.format)("pid:%d,ProcessStart:%u", l_0_26.pid, l_0_26.starttime)
                          if l_0_27 then
                            (bm.request_SMS)(l_0_27, "m")
                            ;
                            (bm.add_action)("SmsAsyncScanEvent", 1)
                          end
                        end
                      end
                    end
                  end
                  do
                    l_0_19 = mp
                    l_0_19 = l_0_19.readu_u32
                    l_0_20 = l_0_11
                    l_0_21 = l_0_12
                    l_0_19 = l_0_19(l_0_20, l_0_21)
                    local l_0_28 = nil
                    l_0_12 = l_0_12 + 4
                    if l_0_19 > 0 then
                      l_0_20 = pcall
                      l_0_21 = l_0_0
                      l_0_28 = l_0_11
                      l_0_20 = l_0_20(l_0_21, l_0_28, l_0_12, l_0_19)
                      local l_0_29, l_0_30 = nil
                      if not l_0_20 then
                        l_0_28 = mp
                        l_0_28 = l_0_28.CLEAN
                        return l_0_28
                      end
                      l_0_12 = l_0_12 + l_0_19
                      l_0_28 = l_0_5
                      l_0_29 = "m_argument:"
                      l_0_30 = 
                      l_0_5 = l_0_28 .. l_0_29 .. l_0_30 .. ";"
                    end
                    do
                      l_0_20 = mp
                      l_0_20 = l_0_20.readu_u32
                      l_0_21 = l_0_11
                      l_0_28 = l_0_12
                      l_0_20 = l_0_20(l_0_21, l_0_28)
                      local l_0_31 = nil
                      l_0_12 = l_0_12 + 4
                      if l_0_20 > 0 then
                        l_0_21 = pcall
                        l_0_28 = l_0_0
                        l_0_31 = l_0_11
                        l_0_21 = l_0_21(l_0_28, l_0_31, l_0_12, l_0_20)
                        local l_0_32, l_0_33 = nil
                        if not l_0_21 then
                          l_0_31 = mp
                          l_0_31 = l_0_31.CLEAN
                          return l_0_31
                        end
                        l_0_12 = l_0_12 + l_0_20
                        l_0_31 = l_0_5
                        l_0_32 = "m_workingDir:"
                        l_0_33 = 
                        l_0_5 = l_0_31 .. l_0_32 .. l_0_33 .. ";"
                      end
                      do
                        l_0_21 = l_0_5
                        l_0_28 = "weight:"
                        l_0_31 = l_0_2
                        l_0_5 = l_0_21 .. l_0_28 .. l_0_31 .. ";"
                        l_0_21 = mp
                        l_0_21 = l_0_21.set_mpattribute
                        l_0_28 = string
                        l_0_28 = l_0_28.format
                        l_0_31 = "MpInternal_researchdata=TaskInfo=%s"
                        l_0_21(l_0_28(l_0_31, l_0_5))
                        -- DECOMPILER ERROR at PC264: Confused about usage of register R23 for local variables in 'ReleaseLocals'

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out DO_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_THEN_STMT

                        -- DECOMPILER ERROR at PC264: LeaveBlock: unexpected jumping out IF_STMT

                      end
                    end
                  end
                end
              end
            end
            if l_0_2 == 2 then
              l_0_17 = mp
              l_0_17 = l_0_17.INFECTED
              do return l_0_17 end
              -- DECOMPILER ERROR at PC270: Confused about usage of register R22 for local variables in 'ReleaseLocals'

            end
          end
        end
      end
    end
  end
end
l_0_1 = mp
l_0_1 = l_0_1.CLEAN
return l_0_1

