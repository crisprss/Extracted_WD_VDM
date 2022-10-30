-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4132.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)
local l_0_1 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
local l_0_2 = ""
if l_0_1 == "/etc/apache2/sites-available" and l_0_0 == "apache2" then
  l_0_2 = "^%s*DocumentRoot%s+(/.-)/?$"
else
  if l_0_1 == "/etc/httpd/conf" and l_0_0 == "httpd" then
    l_0_2 = "^%s*<Directory%s+\"(/.-)/?\">$"
  else
    if l_0_1 == "/etc/lighttpd" and l_0_0 == "lighttpd" then
      l_0_2 = "^%s*server%.document%-root%s+=%s+\"(/.-)/?\"$"
    else
      if l_0_1 == "/etc/nginx/sites-available" and l_0_0 == "nginx" then
        l_0_2 = "^%s*root%s+(/.-)/?;$"
      else
        return mp.CLEAN
      end
    end
  end
end
local l_0_3 = (mp.getfilesize)()
local l_0_4 = ""
if l_0_3 <= mp.HEADERPAGE_SZ then
  l_0_4 = tostring(headerpage)
else
  if l_0_3 <= mp.HEADERPAGE_SZ + mp.FOOTERPAGE_SZ then
    l_0_4 = tostring(headerpage) .. tostring(footerpage)
  else
    ;
    (mp.readprotection)(false)
    l_0_4 = tostring((mp.readfile)(0, l_0_3))
    ;
    (mp.readprotection)(true)
  end
end
local l_0_5 = "webserver_conf_root"
local l_0_6 = StringSplit(l_0_4, "\n")
local l_0_7 = false
;
(MpCommon.SetPersistContextNoPath)(l_0_5, {}, 0)
for l_0_11,l_0_12 in ipairs(l_0_6) do
  local l_0_13 = (string.match)(l_0_12, l_0_2)
  if l_0_13 then
    l_0_7 = true
    ;
    (MpCommon.AppendPersistContextNoPath)(l_0_5, l_0_13, 4294967295)
  end
end
if l_0_7 then
  return mp.INFECTED
end
return mp.CLEAN

