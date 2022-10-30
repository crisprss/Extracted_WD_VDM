-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20526.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
local l_0_2, l_0_3 = nil, nil
for l_0_7,l_0_8 in ipairs(l_0_0) do
  if l_0_8.image_path ~= nil and (mp.bitand)(l_0_8.reason_ex, 1) == 1 then
    l_0_2 = (string.lower)(l_0_8.image_path)
    if l_0_2:find("powershell.exe") then
      l_0_3 = (string.lower)((mp.GetProcessCommandLine)(l_0_8.ppid))
      if (string.find)(l_0_3, "installhostids.ps1", 1, true) then
        return mp.CLEAN
      end
    end
  end
end
return mp.INFECTED

