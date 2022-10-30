-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20742.luac 

-- params : ...
-- function num : 0
shadowdel = function(l_1_0, l_1_1)
  -- function num : 0_0
  for l_1_5 = 1, l_1_1 do
    (bm.trigger_sig)("VSSAMSI", l_1_0, l_1_0)
    local l_1_6 = (mp.GetParentProcInfo)(l_1_0)
    if l_1_6 ~= nil then
      local l_1_7 = l_1_6.image_path
    end
    if l_1_7 then
      if not l_1_7:match("\\([^\\]+)$") then
        break
      end
      l_1_0 = l_1_6.ppid
    else
      break
    end
  end
end

local l_0_0 = (MpCommon.GetPersistContextNoPath)("vssamsipid")
for l_0_4,l_0_5 in ipairs(l_0_0) do
  shadowdel(l_0_5, 4)
end
return mp.CLEAN

