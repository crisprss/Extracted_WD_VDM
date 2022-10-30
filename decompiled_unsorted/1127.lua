-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1127.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC14: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[4]).matched then
  local l_0_0, l_0_1 = nil
else
  do
    do return mp.CLEAN end
    local l_0_2 = nil
    if not contains(l_0_2, {"/tn", "/sc", "/st", "/ru", "onlogon", "/tr", "/f", "/u", "/p"}) then
      return mp.CLEAN
    end
    local l_0_3 = nil
    if not IsProcNameInParentProcessTree("BM", {"winword.exe", "mspub.exe", "excel.exe", "powerpnt.exe", "powershell.exe", "cscript.exe", "wscript.exe", "iexplore.exe", "microsoftedge.exe", "microsoftedgecp.exe", "chrome.exe", "firefox.exe", "python.exe", "mshta.exe", "rundll32.exe", "regsvr32.exe", "psexesvc.exe", "psexec.exe", "services.exe", "wininit.exe", "wmic.exe", "taskeng.exe", "explorer.exe", "msedge.exe", "userinit.exe", "outlook.exe", "logonui.exe", "ccmexec.exe", "olk.exe"}) then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

