-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3985.luac 

-- params : ...
-- function num : 0
local l_0_3 = nil
local l_0_4 = {}
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil then
  local l_0_0, l_0_1, l_0_2 = 3600
else
  do
    -- DECOMPILER ERROR at PC36: Overwrote pending register: R0 in 'AssignReg'

    if not (this_sigattrlog[4]).matched or (this_sigattrlog[4]).utf8p1 == nil or l_0_3 ~= nil then
      (table.insert)(l_0_4, l_0_3)
    end
    -- DECOMPILER ERROR at PC49: Confused about usage of register: R2 in 'UnsetPending'

    if #l_0_4 > 0 then
      setMalwareManifest(l_0_4, l_0_0)
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end

