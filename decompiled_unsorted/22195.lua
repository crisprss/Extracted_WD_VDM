-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22195.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
-- DECOMPILER ERROR at PC6: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC7: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC9: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC12: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC13: Overwrote pending register: R5 in 'AssignReg'

;
(("SOAP:https://unitedstates.cp.wd.microsoft.com/WdCpSrvc.asmx").LoadDBVar)(("REST:https://unitedstates.cp.wd.microsoft.com/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://unitedstates.cp.wd.microsoft.com/wdcp.svc/bond/submitReport", "XPLATBROKER:https://unitedstates.x.cp.wd.microsoft.com/api/report", "")
local l_0_1 = {}
-- DECOMPILER ERROR at PC21: No list found for R1 , SetList fails

-- DECOMPILER ERROR at PC22: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC24: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC26: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC27: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC28: Overwrote pending register: R6 in 'AssignReg'

;
(("SOAP:https://europe.cp.wd.microsoft.com/WdCpSrvc.asmx").LoadDBVar)(("REST:https://europe.cp.wd.microsoft.com/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://europe.cp.wd.microsoft.com/wdcp.svc/bond/submitReport", "XPLATBROKER:https://europe.x.cp.wd.microsoft.com/api/report", "")
local l_0_2 = {}
-- DECOMPILER ERROR at PC36: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC37: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC39: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC41: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC42: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC43: Overwrote pending register: R7 in 'AssignReg'

;
(("SOAP:https://australia.cp.wd.microsoft.com/WdCpSrvc.asmx").LoadDBVar)(("REST:https://australia.cp.wd.microsoft.com/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://australia.cp.wd.microsoft.com/wdcp.svc/bond/submitReport", "XPLATBROKER:https://australia.x.cp.wd.microsoft.com/api/report", "")
local l_0_3 = {}
-- DECOMPILER ERROR at PC51: No list found for R3 , SetList fails

-- DECOMPILER ERROR at PC52: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC54: Overwrote pending register: R5 in 'AssignReg'

-- DECOMPILER ERROR at PC56: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC57: Overwrote pending register: R7 in 'AssignReg'

-- DECOMPILER ERROR at PC58: Overwrote pending register: R8 in 'AssignReg'

;
(("SOAP:https://unitedkingdom.cp.wd.microsoft.com/WdCpSrvc.asmx").LoadDBVar)(("REST:https://unitedkingdom.cp.wd.microsoft.com/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://unitedkingdom.cp.wd.microsoft.com/wdcp.svc/bond/submitReport", "XPLATBROKER:https://unitedkingdom.x.cp.wd.microsoft.com/api/report", "")
local l_0_4 = {}
-- DECOMPILER ERROR at PC66: No list found for R4 , SetList fails

local l_0_5 = false
-- DECOMPILER ERROR at PC68: Overwrote pending register: R6 in 'AssignReg'

-- DECOMPILER ERROR at PC75: Overwrote pending register: R7 in 'AssignReg'

if (("REST:https://unitedstates1.cp.wd.microsoft.us/wdcp.svc/submitReport").GetEngineBuild)() >= 16700 then
  local l_0_6 = (string.lower)((("BOND:https://unitedstates1.cp.wd.microsoft.us/wdcp.svc/bond/submitReport").GetOrgID)())
  if l_0_6 == "baf4c18d-0c51-4329-9062-65c312537885" or l_0_6 == "d6ba914f-6a8f-47f9-9843-23913bb1a5a9" then
    local l_0_7 = {}
    -- DECOMPILER ERROR at PC85: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC89: No list found for R7 , SetList fails

    -- DECOMPILER ERROR at PC90: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC92: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC94: Overwrote pending register: R10 in 'AssignReg'

    -- DECOMPILER ERROR at PC95: Overwrote pending register: R11 in 'AssignReg'

    -- DECOMPILER ERROR at PC96: Overwrote pending register: R12 in 'AssignReg'

    ;
    (("SOAP:https://unitedstates4.cp.wd.microsoft.us/WdCpSrvc.asmx").LoadDBVar)(("").DBVAR_ARRAY_WIDESTRING, "BOND:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/bond/submitReport", "XPLATBROKER:https://unitedstates4.x.cp.wd.microsoft.us/api/report", "")
    l_0_5 = true
  end
end
do
  if l_0_5 == false then
    (database.LoadDBVar)(database.DBVAR_ARRAY_WIDESTRING, "MAPSURL_FFL4", l_0_4, 1)
  end
  local l_0_8 = {}
  -- DECOMPILER ERROR at PC115: No list found for R6 , SetList fails

  -- DECOMPILER ERROR at PC116: Overwrote pending register: R7 in 'AssignReg'

  -- DECOMPILER ERROR at PC118: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC120: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC121: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC122: Overwrote pending register: R11 in 'AssignReg'

  ;
  (("SOAP:https://unitedstates4.cp.wd.microsoft.us/WdCpSrvc.asmx").LoadDBVar)(("REST:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://unitedstates4.cp.wd.microsoft.us/wdcp.svc/bond/submitReport", "XPLATBROKER:https://unitedstates4.x.cp.wd.microsoft.us/api/report", "")
  local l_0_9 = {}
  -- DECOMPILER ERROR at PC130: No list found for R7 , SetList fails

  -- DECOMPILER ERROR at PC131: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC133: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC135: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC136: Overwrote pending register: R11 in 'AssignReg'

  -- DECOMPILER ERROR at PC137: Overwrote pending register: R12 in 'AssignReg'

  ;
  (("SOAP:https://unitedstates2.cp.wd.microsoft.us/WdCpSrvc.asmx").LoadDBVar)(("REST:https://unitedstates2.cp.wd.microsoft.us/wdcp.svc/submitReport").DBVAR_ARRAY_WIDESTRING, "BOND:https://unitedstates2.cp.wd.microsoft.us/wdcp.svc/bond/submitReport", "XPLATBROKER:https://unitedstates2.x.cp.wd.microsoft.us/api/report", "")
end

