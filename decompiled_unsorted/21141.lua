-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21141.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = pcallEx("get_startup_info", bm.get_current_process_startup_info)
do
  local l_0_2 = l_0_0 and l_0_1 ~= nil and l_0_1.ppid ~= nil and l_0_1.ppid or ""
  do
    local l_0_4, l_0_5 = nil
    if not pcallEx("reportHostsToBlock", function()
  -- function num : 0_0 , upvalues : l_0_3
  local l_1_0 = GetRollingQueueKeys("015b9d6d_" .. l_0_3)
  if l_1_0 ~= nil and type(l_1_0) == "table" then
    for l_1_4,l_1_5 in ipairs(l_1_0) do
      (bm.add_related_string)("cs_conn", l_1_5, bm.RelatedStringBMReport)
    end
  end
end
) then
      reportPcallEx()
    end
    do return mp.INFECTED end
    -- DECOMPILER ERROR at PC29: freeLocal<0 in 'ReleaseLocals'

  end
end

