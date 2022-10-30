-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22047.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p2)
if l_0_0:find("nvcpl.dll") ~= nil then
  return mp.CLEAN
end
if l_0_0:find("cceraser.dll") ~= nil then
  return mp.CLEAN
end
local l_0_1 = (bm.get_current_process_startup_info)()
if MpCommon.SECURITY_MANDATORY_MEDIUM_RID < l_0_1.integrity_level then
  return mp.CLEAN
end
local l_0_2, l_0_3 = l_0_0:find("rundll32.exe")
if l_0_2 == nil then
  l_0_2 = l_0_0:find("rundll32", 1, true)
end
if l_0_3 == nil then
  return mp.CLEAN
end
local l_0_4 = (string.sub)(l_0_0, l_0_3 - (string.len)(l_0_0))
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = (string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))
local l_0_6 = "|" .. l_0_5:match("(%w+%.exe)$") .. "|"
local l_0_7 = "|nvvsvc.exe|salnst.exe|"
if l_0_7:find(l_0_6, 1, true) ~= nil then
  return mp.CLEAN
end
do
  if l_0_4:match("([^,]+)") == nil then
    local l_0_8, l_0_9 = l_0_4
  end
  -- DECOMPILER ERROR at PC96: Confused about usage of register: R8 in 'UnsetPending'

  local l_0_10 = nil
  local l_0_11 = nil
  if ((l_0_8:gsub("%s*(.-)%s*$", "%1")):gsub("\"", "")):find(":\\", 1, true) == nil then
    if l_0_5 == nil then
      return mp.CLEAN
    end
    local l_0_12 = nil
    while 1 do
      -- DECOMPILER ERROR at PC129: Confused about usage of register: R12 in 'UnsetPending'

    end
    -- DECOMPILER ERROR at PC158: Overwrote pending register: R10 in 'AssignReg'

    if l_0_12:find("..\\", 1, true) ~= nil and 16 > 0 and l_0_12:find("..\\", 1, true) ~= nil then
      do
        if l_0_12:find(".\\", 1, true) == nil or (l_0_5:match("(.+)\\[^\\]+$")):match("(.+)\\[^\\]+$") == nil then
          return mp.INFECTED
        end
        if l_0_12 == nil then
          return mp.INFECTED
        end
        -- DECOMPILER ERROR at PC169: Confused about usage of register: R11 in 'UnsetPending'

        -- DECOMPILER ERROR at PC172: Overwrote pending register: R10 in 'AssignReg'

        -- DECOMPILER ERROR at PC175: Overwrote pending register: R12 in 'AssignReg'

        ;
        (mp.ReportLowfi)(16 - 1, 1784912360)
        return mp.INFECTED
      end
    end
  end
end

