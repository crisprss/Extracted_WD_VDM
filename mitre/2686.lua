-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2686.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 then
  AppendToRollingQueue("PoshevinRelatedFiles", l_0_0, nil, 5000)
end
local l_0_1, l_0_2 = (bm.get_process_relationships)()
if l_0_2 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    if l_0_7.image_path ~= nil and l_0_7.ppid ~= nil then
      TrackPidAndTechniqueBM(l_0_7.ppid, "T1037", "possible_poshevin_child_a")
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

