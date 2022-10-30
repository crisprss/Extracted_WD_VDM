-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3220.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 or (mp.getfilesize)() > 8192 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "anexo %- %d%d%d%d%d+%.lnk") ~= nil or (string.find)(l_0_0, "dettagli%-%d%d%d+%.lnk") ~= nil or (string.find)(l_0_0, "cxxv_%d%d%d+%.lnk") ~= nil or (string.find)(l_0_0, "doc%-%d%d%d+%.lnk") ~= nil or (string.find)(l_0_0, "scanned_%d%d%d%d%d+%.pdf") ~= nil or (string.find)(l_0_0, "crmreport_%d%d%d%d+%.lnk") ~= nil or (string.find)(l_0_0, "august_%d%d%d%d_pdf%.iso") ~= nil or (string.find)(l_0_0, "curriculo.lnk", 1, true) ~= nil or (string.find)(l_0_0, "comprovante.lnk", 1, true) ~= nil or (string.find)(l_0_0, "stolenimages_evidence.iso-documents.lnk.bin", 1, true) ~= nil or (string.find)(l_0_0, "roshan-bandara_cv_dialog.lnk", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

