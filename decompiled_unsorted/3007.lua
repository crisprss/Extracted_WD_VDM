-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3007.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 2097152 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("SCRIPT:WsfTag") or (mp.readu_u16)(headerpage, 1) == 10799 and (mp.readu_u16)(footerpage, mp.FOOTERPAGE_SZ - 5) == 12074 then
  (mp.readprotection)(false)
  local l_0_1 = (mp.readfile)(0, l_0_0)
  l_0_1 = (string.gsub)(l_0_1, "/%*.-%*/", "")
  l_0_1 = (string.gsub)(l_0_1, "<!%-%-.-%-%->", "")
  l_0_1 = (string.gsub)(l_0_1, "<comment>.-</comment>", "")
  ;
  (mp.vfo_add_buffer)(l_0_1, "[WsfCmtOut]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
do
  return mp.CLEAN
end

