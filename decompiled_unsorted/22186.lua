-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22186.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC19: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1, l_0_2 = nil
  else
  end
  if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
    do return mp.CLEAN end
    local l_0_3 = (string.lower)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[3]).utf8p2))
    local l_0_4 = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  for l_1_5 in (string.gmatch)(l_1_0, "%S+") do
    l_1_1[#l_1_1 + 1] = l_1_5
  end
  return l_1_1
end

    if not contains(l_0_3, {"/transfer", "/addfile", "/create", "/setnotifycmdline", "/resume", "/setnotifyflags", "/setminretrydelay", "/setcustomheaders"}) then
      return mp.CLEAN
    end
    local l_0_5 = nil
    if not IsProcNameInParentProcessTree("BM", {"winword.exe", "mspub.exe", "excel.exe", "powerpnt.exe", "powershell.exe", "cscript.exe", "wscript.exe", "iexplore.exe", "microsoftedge.exe", "microsoftedgecp.exe", "chrome.exe", "firefox.exe", "python.exe", "rundll32.exe", "regsvr32.exe", "psexesvc.exe", "psexec.exe", "services.exe", "wininit.exe", "wmic.exe", "w3wp.exe"}) then
      return mp.CLEAN
    end
    local l_0_6 = nil
    local l_0_7 = l_0_4(l_0_3)
    local l_0_8 = {["/wrap"] = true, ["/nowrap"] = true, ["/rawreturn"] = true}
    for l_0_12,l_0_13 in ipairs(l_0_7) do
      local l_0_9 = 2
      -- DECOMPILER ERROR at PC111: Confused about usage of register: R11 in 'UnsetPending'

      if l_0_9 <= l_0_13 and not l_0_8["iexplore.exe"] then
        l_0_9 = l_0_13
        break
      end
    end
    do
      -- DECOMPILER ERROR at PC119: Confused about usage of register: R6 in 'UnsetPending'

      if #l_0_7 == l_0_9 then
        return mp.CLEAN
      end
      -- DECOMPILER ERROR at PC124: Confused about usage of register: R6 in 'UnsetPending'

      local l_0_14 = nil
      local l_0_15 = l_0_7[l_0_9]
      if l_0_15 == "/transfer" then
        l_0_14 = l_0_14 + 1
        local l_0_16 = {}
        -- DECOMPILER ERROR at PC137: Overwrote pending register: R6 in 'AssignReg'

        -- DECOMPILER ERROR at PC141: Overwrote pending register: R6 in 'AssignReg'

        -- DECOMPILER ERROR at PC145: Overwrote pending register: R6 in 'AssignReg'

        -- DECOMPILER ERROR at PC149: Overwrote pending register: R6 in 'AssignReg'

        if (((l_0_7[l_0_14] ~= "/download" and l_0_7[l_0_14] ~= "/upload") or l_0_7[l_0_14] == "/priority") and l_0_7[l_0_14] ~= "/aclflags") or l_0_7[l_0_14] == "/dynamic" then
          local l_0_17 = l_0_7[l_0_14]
          l_0_16.load_done = {job = l_0_17, 
files = {}
}
          for i = l_0_14, #l_0_7, 2 do
            local l_0_22 = (l_0_16.load_done).files
            l_0_22[l_0_21] = {remote_file_name = l_0_7[l_0_21], local_file_name = l_0_7[l_0_21 + 1]}
          end
          do
            if l_0_15 == "/addfile" then
              local l_0_23 = nil
              local l_0_24 = l_0_7[l_0_14 + 1]
              local l_0_25 = l_0_7[l_0_14 + 2]
              local l_0_26 = l_0_7[l_0_14 + 3]
              l_0_23.load_done = {job = l_0_24, remote_url = l_0_25, local_name = l_0_26}
              if (string.match)(l_0_25, "^https?://") then
                local l_0_27 = SafeGetUrlReputation
                l_0_27 = l_0_27({l_0_25}, {})
                if l_0_27 == -1 then
                  return mp.CLEAN
                else
                  if l_0_27 ~= nil then
                    for l_0_31,l_0_32 in ipairs(l_0_27.urls) do
                      local l_0_28 = nil
                      -- DECOMPILER ERROR at PC209: Confused about usage of register: R18 in 'UnsetPending'

                      -- DECOMPILER ERROR at PC212: Confused about usage of register: R18 in 'UnsetPending'

                      if ("regsvr32.exe").determination == 2 and ("regsvr32.exe").confidence >= 60 then
                        return mp.INFECTED
                      end
                    end
                  end
                end
              end
            else
              do
                if l_0_15 == "/create" then
                  local l_0_33 = nil
                  local l_0_34 = l_0_7[l_0_14 + 1]
                  local l_0_35 = l_0_7[l_0_14 + 2]
                  l_0_33.load_done = {job = l_0_34, payload = l_0_35}
                else
                  do
                    if l_0_15 == "/setnotifycmdline" then
                      local l_0_36 = nil
                      local l_0_37 = l_0_7[l_0_14 + 1]
                      local l_0_38 = l_0_7[l_0_14 + 2]
                      l_0_36.load_done = {job = l_0_37, program = l_0_38}
                    else
                      do
                        if l_0_15 == "/resume" then
                          local l_0_39 = nil
                          local l_0_40 = l_0_7[l_0_14 + 1]
                          l_0_39.load_done = {job = l_0_40}
                        else
                          do
                            if l_0_15 == "/setnotifyflags" then
                              local l_0_41 = nil
                              local l_0_42 = l_0_7[l_0_14 + 1]
                              local l_0_43 = l_0_7[l_0_14 + 2]
                              l_0_41.load_done = {job = l_0_42, flag = l_0_43}
                            else
                              do
                                if l_0_15 == "/setminretrydelay" then
                                  local l_0_44 = nil
                                  local l_0_45 = l_0_7[l_0_14 + 1]
                                  local l_0_46 = l_0_7[l_0_14 + 2]
                                  l_0_44.load_done = {job = l_0_45, retry_delay = l_0_46}
                                else
                                  do
                                    if l_0_15 == "/setcustomheaders" then
                                      local l_0_47 = nil
                                      local l_0_48 = l_0_7[l_0_14 + 1]
                                      l_0_47.load_done = {job = l_0_48}
                                      for i = l_0_14 + 2, #l_0_7 do
                                        (table.insert)(l_0_47.load_done, l_0_7[i])
                                      end
                                    end
                                    do
                                      return mp.INFECTED
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
        end
      end
    end
  end
end

