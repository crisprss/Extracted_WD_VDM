-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19849.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil then
  local l_0_0 = nil
  local l_0_1 = nil
  if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
    l_0_1 = (sysio.GetFileSize)(l_0_0)
    if l_0_1 ~= nil and l_0_1 < 35 then
      extractRansomNote(l_0_0)
      sms_untrusted_process()
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

