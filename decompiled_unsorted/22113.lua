-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22113.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0, l_0_1 = nil
  end
  local l_0_2 = nil
  local l_0_3, l_0_4 = , pcall(processActions, l_0_2, (bm.get_current_process_startup_info)())
  if not l_0_4 then
    local l_0_5 = nil
    local l_0_6 = pcall
    local l_0_7 = mp.GetUrlReputation
    local l_0_8 = {"http://962b56e5-5eb2-4ed3-8757-3f22f190d202.report"}
    local l_0_9 = json_encode({error = l_0_5})
    l_0_6(l_0_7, l_0_8, l_0_9)
  end
  do
    return mp.INFECTED
  end
end

