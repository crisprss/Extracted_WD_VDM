-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3071.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  (mp.set_mpattribute)("PUA:Block:2345Cn")
  return mp.INFECTED
end
local l_0_1 = l_0_0.InternalName
-- DECOMPILER ERROR at PC22: Overwrote pending register: R1 in 'AssignReg'

do
  local l_0_2, l_0_3, l_0_4 = l_0_1 and l_0_0.FileDescription or ""
  if (string.find)(l_0_1, "haozip", 1, true) then
    (mp.set_mpattribute)("PUA:Block:HaoZip")
    return mp.INFECTED
  end
  -- DECOMPILER ERROR at PC42: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC48: Confused about usage of register: R2 in 'UnsetPending'

  do
    if l_0_2 and l_0_1 == "" then
      local l_0_5, l_0_6, l_0_7 = (string.lower)(l_0_2)
      l_0_6 = string
      l_0_6 = l_0_6.find
      l_0_7 = l_0_5
      l_0_6 = l_0_6(l_0_7, "2345好压 v", 1, true)
      if not l_0_6 then
        l_0_6 = string
        l_0_6 = l_0_6.find
        l_0_7 = l_0_5
        l_0_6 = l_0_6(l_0_7, "2345}Y�S v", 1, true)
      end
      if l_0_6 then
        l_0_6 = mp
        l_0_6 = l_0_6.set_mpattribute
        l_0_7 = "PUA:Block:HaoZip"
        l_0_6(l_0_7)
        l_0_6 = mp
        l_0_6 = l_0_6.INFECTED
        return l_0_6
      end
    end
    -- DECOMPILER ERROR at PC76: Confused about usage of register: R2 in 'UnsetPending'

    -- DECOMPILER ERROR at PC82: Confused about usage of register: R2 in 'UnsetPending'

    do
      if l_0_5 and l_0_1 == "" then
        local l_0_8, l_0_9 = (string.lower)(l_0_5)
        l_0_9 = string
        l_0_9 = l_0_9.find
        l_0_9 = l_0_9(l_0_8, "2345加�\128�浏览器 v", 1, true)
        if l_0_9 then
          l_0_9 = mp
          l_0_9 = l_0_9.set_mpattribute
          l_0_9("PUA:Block:2345Browser")
          l_0_9 = mp
          l_0_9 = l_0_9.INFECTED
          return l_0_9
        end
      end
      ;
      (mp.set_mpattribute)("PUA:Block:2345Cn")
      return mp.INFECTED
    end
  end
end

