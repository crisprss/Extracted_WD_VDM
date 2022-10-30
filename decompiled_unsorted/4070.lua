-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4070.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_FULL)
local l_0_1 = false
local l_0_2 = (MpCommon.GetPersistContextNoPath)("webserver_conf_root")
if l_0_2 ~= nil and #l_0_2 > 0 then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if (string.match)(l_0_0, l_0_7) then
      l_0_1 = true
      break
    end
  end
else
  do
    if (string.match)(l_0_0, "/var/www/") then
      l_0_1 = true
    end
    if l_0_1 then
      local l_0_8 = {}
      -- DECOMPILER ERROR at PC46: No list found for R3 , SetList fails

      -- DECOMPILER ERROR at PC47: Overwrote pending register: R4 in 'AssignReg'

      -- DECOMPILER ERROR at PC48: Overwrote pending register: R5 in 'AssignReg'

      for l_0_12,l_0_13 in ("/run/nginx.pid")("/run/lighttpd.pid") do
        if (sysio.IsFileExists)(l_0_13) then
          return mp.INFECTED
        end
      end
    end
    do
      do
        -- DECOMPILER ERROR at PC63: Overwrote pending register: R3 in 'AssignReg'

        do return l_0_8 end
        -- WARNING: undefined locals caused missing assignments!
      end
    end
  end
end

