-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1810.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((bm.get_current_process_startup_info)())
local l_0_1 = nil
if l_0_0 ~= nil and l_0_0.ppid ~= nil then
  l_0_1 = l_0_0.ppid
end
local l_0_2, l_0_3 = (bm.get_process_relationships)()
for l_0_7,l_0_8 in ipairs(l_0_2) do
  local l_0_9 = l_0_8.image_path
  if l_0_9 ~= nil then
    local l_0_10 = {}
    l_0_10["ccmexec.exe"] = true
    l_0_10["gpscript.exe"] = true
    l_0_10["mpcmdrun.exe"] = true
    l_0_10["mssense.exe"] = true
    l_0_10["senseir.exe"] = true
    local l_0_11 = (string.lower)(l_0_9:match("\\([^\\]+)$"))
    if l_0_10[l_0_11] then
      TrackPidAndTechniqueBM(l_0_1, "ttexclusion", "ttexclusion-parentex")
      return mp.INFECTED
    end
  end
end
return mp.CLEAN

