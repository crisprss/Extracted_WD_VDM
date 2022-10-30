-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18679.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:XlsUnknownSheetVeryHidden") and (mp.get_mpattribute)("RPF:XlsMacroSheetHidden") and (mp.get_mpattribute)("MpExcelFormulaRoutines") and (mp.get_mpattribute)("RPF:XlsWorksheetHidden") then
  return mp.INFECTED
end
return mp.CLEAN

