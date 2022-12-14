-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22144.luac 

-- params : ...
-- function num : 0
local l_0_0 = "|acrord32.exe"
local l_0_1 = "|explorer.exe|notepad.exe|regedit.exe|hh.exe|winhlp32.exe|bfsvc.exe|write.exe|splwow64.exe|helppane.exe"
local l_0_2 = "|svchost.exe|explorer.exe|reg.exe|dllhost.exe|notepad.exe|regsvr32.exe|userinit.exe|regedit.exe|secedit.exe|calc.exe|taskmgr.exe|runonce.exe|certutil.exe|find.exe|winver.exe|hh.exe|write.exe|ctfmon.exe|gpscript.exe|net.exe|powercfg.exe|lsass.exe|tcpsvcs.exe|msfeedssync.exe|taskeng.exe|drvinst.exe|mshta.exe|dllhst3g.exe|sdiagnhost.exe|werfault.exe|sfc.exe|upnpcont.exe|wiaacmgr.exe|mmc.exe|mspaint.exe|robocopy.exe|xcopy.exe|logagent.exe|wextract.exe|cmmon32.exe|dpnsvr.exe|net1.exe|dplaysvr.exe|schtasks.exe|dvdupgrd.exe|fixmapi.exe|systray.exe|netsh.exe|mobsync.exe|unregmp2.exe|sethc.exe"
local l_0_3 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
local l_0_4 = l_0_3:match("(%w+%.exe)$")
if l_0_4 == nil then
  return mp.CLEAN
end
if l_0_3 == nil then
  return mp.CLEAN
end
l_0_4 = "|" .. l_0_4
local l_0_5 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%"))
local l_0_6 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSTEM32"))
local l_0_7 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%WINDIR%\\SYSWOW64"))
local l_0_8 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%PROGRAMFILES%"))
local l_0_9 = (string.lower)((mp.ContextualExpandEnvironmentVariables)("%PROGRAMFILES(86)%"))
local l_0_10 = false
if (l_0_8 and l_0_3:find(l_0_8, 1, true)) or l_0_9 and l_0_3:find(l_0_9, 1, true) then
  if l_0_0:find(l_0_4, 1, true) then
    l_0_10 = true
  else
    return mp.CLEAN
  end
end
if l_0_5 then
  if l_0_3:find(l_0_6, 1, true) or l_0_3:find(l_0_7, 1, true) then
    if l_0_2:find(l_0_4, 1, true) then
      l_0_10 = true
    else
      return mp.CLEAN
    end
  else
    if l_0_3:find(l_0_5, 1, true) then
      if l_0_1:find(l_0_4, 1, true) then
        l_0_10 = true
      else
        return mp.CLEAN
      end
    end
  end
end
if l_0_10 == false then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched then
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 2717791813)
else
  ;
  (mp.ReportLowfi)((mp.ContextualExpandEnvironmentVariables)((this_sigattrlog[2]).utf8p1), 3542909154)
end
return mp.INFECTED

