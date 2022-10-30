-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4126.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC32: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC35: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC39: Overwrote pending register: R5 in 'AssignReg'

  local l_0_2 = (("/.config/systemd/user").getfilename)((("/dev/shm").bitor)(("/etc/cron.").FILEPATH_QUERY_PATH, ("/etc/crontab").FILEPATH_QUERY_LOWERCASE))
  for l_0_6 = 1, #l_0_1 do
    -- DECOMPILER ERROR at PC47: Overwrote pending register: R7 in 'AssignReg'

    local l_0_7 = "/etc/rc.d/init.d"
    -- DECOMPILER ERROR at PC48: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC48: Overwrote pending register: R8 in 'AssignReg'

    local l_0_8 = ("/etc/rc.d/rc")("/etc/rc.local")
    -- DECOMPILER ERROR at PC50: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC51: Overwrote pending register: R11 in 'AssignReg'

    -- DECOMPILER ERROR at PC52: Overwrote pending register: R12 in 'AssignReg'

    if l_0_2:sub("/lib/systemd/system", "/tmp") == l_0_7 then
      return mp.LOWFI
    end
  end
end
do
  do
    do return mp.CLEAN end
    -- WARNING: undefined locals caused missing assignments!
  end
end

