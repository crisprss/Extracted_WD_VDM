-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3604.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "_pdf__.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf..rar", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.gz", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.xz", 1, true) ~= nil or (string.find)(l_0_0, ".gz.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf...exe", 1, true) ~= nil or (string.find)(l_0_0, ".tar.xz", 1, true) ~= nil or (string.find)(l_0_0, "_pdf_gz.bin", 1, true) ~= nil or (string.find)(l_0_0, "_xlxs.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ",docx.exe", 1, true) ~= nil or (string.find)(l_0_0, ".txt.exe", 1, true) ~= nil or (string.find)(l_0_0, "xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, ".xlsx.z", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "-pdf.ace", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.ace", 1, true) ~= nil or (string.find)(l_0_0, ", pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ".png.zip.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.zip", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.cab", 1, true) ~= nil or (string.find)(l_0_0, ".jpg.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.rar.exe", 1, true) ~= nil or (string.find)(l_0_0, "_jpg.exe", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.pif", 1, true) ~= nil or (string.find)(l_0_0, "..com", 1, true) ~= nil or (string.find)(l_0_0, ".doc.exe", 1, true) ~= nil or (string.find)(l_0_0, ".docx.exe", 1, true) ~= nil or (string.find)(l_0_0, "..exe", 1, true) ~= nil or (string.find)(l_0_0, "xxx.exe", 1, true) ~= nil or (string.find)(l_0_0, " .bat", 1, true) ~= nil or (string.find)(l_0_0, ".xls.exe", 1, true) ~= nil or (string.find)(l_0_0, ",xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.rar", 1, true) ~= nil or (string.find)(l_0_0, "-pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "-pdf.gz.rar", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.gz", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.gz.exe", 1, true) ~= nil or (string.find)(l_0_0, "pdf.gz.iso", 1, true) ~= nil or (string.find)(l_0_0, "_pdf_.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.iso", 1, true) ~= nil or (string.find)(l_0_0, ".xlxs.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.uue", 1, true) ~= nil or (string.find)(l_0_0, "scr.pdf.r00", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.tar", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.arj", 1, true) ~= nil or (string.find)(l_0_0, ".img.iso", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.ace", 1, true) ~= nil or (string.find)(l_0_0, "scan copy.exe", 1, true) ~= nil or (string.find)(l_0_0, ",xls.exe", 1, true) ~= nil or (string.find)(l_0_0, ".xslx.exe", 1, true) ~= nil or (string.find)(l_0_0, "jewellerymanagementsystem.exe", 1, true) ~= nil or (string.find)(l_0_0, "·pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ".xlsx.bat", 1, true) ~= nil or (string.find)(l_0_0, ".png.exe", 1, true) ~= nil or (string.find)(l_0_0, "rfq.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.com", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.bat", 1, true) ~= nil or (string.find)(l_0_0, ".pdf_.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf (2).exe", 1, true) ~= nil or (string.find)(l_0_0, "_xlsx_.exe", 1, true) ~= nil or (string.find)(l_0_0, "-pdf-.exe", 1, true) ~= nil or (string.find)(l_0_0, ".com.exe", 1, true) ~= nil or (string.find)(l_0_0, "pdff.exe", 1, true) ~= nil or (string.find)(l_0_0, ",doc.exe", 1, true) ~= nil or (string.find)(l_0_0, ".txt.exe", 1, true) ~= nil or (string.find)(l_0_0, ". xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, ". xls.exe", 1, true) ~= nil or (string.find)(l_0_0, ".eml.exe", 1, true) ~= nil or (string.find)(l_0_0, "pdf.lzh", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.scr", 1, true) ~= nil or (string.find)(l_0_0, "$$.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.exe.7z", 1, true) ~= nil or (string.find)(l_0_0, "-doc.exe", 1, true) ~= nil or (string.find)(l_0_0, "_xlsx.gz", 1, true) ~= nil or (string.find)(l_0_0, "_docx.scr", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.z.exe", 1, true) ~= nil or (string.find)(l_0_0, "_txt.exe", 1, true) ~= nil or (string.find)(l_0_0, ".exe.xz", 1, true) ~= nil or (string.find)(l_0_0, "pdf (1).exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.flk;exe", 1, true) ~= nil or (string.find)(l_0_0, "_xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, "img.exe", 1, true) ~= nil or (string.find)(l_0_0, "_zip.exe", 1, true) ~= nil or (string.find)(l_0_0, "_image.scr", 1, true) ~= nil or (string.find)(l_0_0, "pdf.bat", 1, true) ~= nil or (string.find)(l_0_0, "_xls.exe", 1, true) ~= nil or (string.find)(l_0_0, ".xls.scr", 1, true) ~= nil or (string.find)(l_0_0, "txt.exe", 1, true) ~= nil or (string.find)(l_0_0, "...exe", 1, true) ~= nil or (string.find)(l_0_0, "upadted quotation sheet.exe", 1, true) ~= nil or (string.find)(l_0_0, ".xlsx.img", 1, true) ~= nil or (string.find)(l_0_0, ". txt.exe", 1, true) ~= nil or (string.find)(l_0_0, "_xlsx.lzh.exe", 1, true) ~= nil or (string.find)(l_0_0, ".tar.exe", 1, true) ~= nil or (string.find)(l_0_0, ".tar.lz.exe", 1, true) ~= nil or (string.find)(l_0_0, " xls.exe", 1, true) ~= nil or (string.find)(l_0_0, "_jpeg_image___.exe", 1, true) ~= nil or (string.find)(l_0_0, " xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, "_docx.exe", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
