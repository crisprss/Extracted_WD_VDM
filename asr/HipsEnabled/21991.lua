-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21991.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B") then
  local l_0_0 = nil
  local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  do
    do
      if l_0_1 ~= nil then
        local l_0_2 = (mp.GetProcessCommandLine)(l_0_1)
        if l_0_2 ~= nil and (string.len)(l_0_2) ~= 0 then
          l_0_0 = (string.match)(l_0_2, ".:\\program files\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
          if l_0_0 == nil or (string.len)(l_0_0) == 0 then
            l_0_0 = (string.match)(l_0_2, ".:\\program files\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
            if l_0_0 == nil or (string.len)(l_0_0) == 0 then
              l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\microsoft office\\root\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
              if l_0_0 == nil or (string.len)(l_0_0) == 0 then
                l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\microsoft office\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                if l_0_0 == nil or (string.len)(l_0_0) == 0 then
                  l_0_0 = (string.match)(l_0_2, ".:\\program files\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                  if l_0_0 == nil or (string.len)(l_0_0) == 0 then
                    l_0_0 = (string.match)(l_0_2, ".:\\program files %(x86%)\\windowsapps\\microsoft%.office[^\\]+\\office..\\[^%.]+%.exe\"?[^\"]+\"([^\"]+)\"")
                  end
                end
              end
            end
          end
        end
      end
      if l_0_0 ~= nil and (sysio.IsPathAVExcluded)(l_0_0, false) == true then
        return mp.CLEAN
      end
      return mp.INFECTED
    end
  end
end

