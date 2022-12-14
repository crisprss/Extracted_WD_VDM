-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22179.luac 

-- params : ...
-- function num : 0
IsSuspiciousFileExt = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = {}
  l_1_1.exe = 1
  l_1_1.dll = 1
  l_1_1.scr = 1
  l_1_1.ocx = 1
  l_1_1.com = 1
  l_1_1.js = 2
  l_1_1.vbs = 2
  l_1_1.hta = 2
  l_1_1.cmd = 2
  l_1_1.jar = 2
  l_1_1.jse = 2
  l_1_1.pif = 2
  l_1_1.vbe = 2
  l_1_1.wsc = 2
  l_1_1.wsf = 2
  l_1_1.wsh = 2
  l_1_1.bat = 2
  local l_1_2 = l_1_1[l_1_0]
  if l_1_2 == 1 then
    local l_1_3 = mp.get_mpattribute
    local l_1_4 = "BM_MZ_FILE"
    do return l_1_3(l_1_4) end
    -- DECOMPILER ERROR at PC26: Confused about usage of register R4 for local variables in 'ReleaseLocals'

  else
    if l_1_2 == 2 then
      return true
    end
  end
  do return false end
  -- DECOMPILER ERROR at PC33: Confused about usage of register R3 for local variables in 'ReleaseLocals'

end

IsSuspiciousFileExtTest = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = "ade;adp;app;asp;bas;bat;cer;chm;cmd;cnt;com;cpl;crt;csh;der;diagcab;dll;exe;fxp;gadget;grp;hlp;hpj;hta;inf;ins;isp;its;jar;jnlp;js;jse;ksh;lnk;mad;maf;mag;mam;maq;mar;mas;mat;mau;mav;maw;mcf;mda;mdb;mde;mdt;mdw;mdz;msc;msh;msh1;msh1xml;msh2;msh2xml;mshxml;msi;msp;mst;msu;ocx;ops;osd;pcd;pif;pl;plg;prf;prg;printerexport;ps1;ps1xml;ps2;ps2xml;psc1;psc2;psd1;psdm1;pst;reg;scf;scr;sct;shb;shs;theme;tmp;url;vb;vbe;vbp;vbs;vsmacros;vsw;webpnp;website;ws;wsc;wsf;wsh;xbap;xll;xnk"
  if l_2_1:find(l_2_0, 1, true) ~= nil then
    return true
  end
  return false
end

IsArchiveFileExt = function(l_3_0)
  -- function num : 0_2
  local l_3_1 = {}
  l_3_1.zip = true
  l_3_1.cab = true
  l_3_1.rar = true
  l_3_1["7z"] = true
  if l_3_1[l_3_0] == nil then
    return false
  end
  return true
end

IsArchiveFileExtTest = function(l_4_0)
  -- function num : 0_3
  local l_4_1 = {}
  l_4_1.zip = true
  l_4_1.cab = true
  l_4_1.rar = true
  l_4_1["7z"] = true
  if l_4_1[l_4_0] == nil then
    return false
  end
  return true
end

IsWebmailDownloadURL = function()
  -- function num : 0_4
  local l_5_0 = (mp.IOAVGetDownloadUrl)()
  if l_5_0 == nil or (string.len)(l_5_0) < 15 then
    return false
  end
  local l_5_1 = (l_5_0:match("https?://([%w%.-]+)/")):lower()
  if l_5_1 == nil then
    return false
  end
  if l_5_1:find("mail.google", 1, true) ~= nil or l_5_1:find("mail-attachment", 1, true) ~= nil or l_5_1:find("attachment.outlook.", 1, true) ~= nil or l_5_1:find("dl-mail.ymail", 1, true) ~= nil or l_5_1:find(".yahoomail.", 1, true) ~= nil then
    return true
  end
  return false
end

IsEmailCachePath = function(l_6_0)
  -- function num : 0_5
  local l_6_1 = {}
  local l_6_2 = {}
  -- DECOMPILER ERROR at PC4: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC7: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC10: Overwrote pending register: R4 in 'AssignReg'

  l_6_2 = l_6_2((("\\temporary internet files\\content.outlook\\").get_contextdata)(("\\inetcache\\content.outlook\\").CONTEXT_DATA_PROCESSNAME))
  local l_6_3 = l_6_1[l_6_2]
  if l_6_3 == nil then
    return false
  end
  for l_6_7,l_6_8 in pairs(l_6_3) do
    if l_6_0:find(l_6_8, 1, true) ~= nil then
      return true
    end
  end
  return false
end


