-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3144.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC16: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  -- DECOMPILER ERROR at PC17: Confused about usage of register: R0 in 'UnsetPending'

  if not l_0_0:match("/s[%s]?$") then
    return mp.CLEAN
  end
  local l_0_2 = nil
  -- DECOMPILER ERROR at PC38: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC51: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC56: Confused about usage of register: R1 in 'UnsetPending'

  -- DECOMPILER ERROR at PC64: Unhandled construct in 'MakeBoolean' P3

  if ((this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p1 ~= nil and not (this_sigattrlog[4]).matched) or nil then
    AppendToRollingQueue("PoshevinRelatedFiles", (string.lower)(nil), nil, 5000)
  end
  local l_0_3 = nil
  if (string.lower)((bm.get_imagepath)()) then
    AppendToRollingQueue("PoshevinRelatedFiles", (string.lower)((bm.get_imagepath)()), nil, 5000)
  end
  local l_0_4, l_0_5 = , (bm.get_process_relationships)()
  if "PoshevinRelatedFiles" ~= nil then
    for l_0_9,l_0_10 in ipairs(R6_PC86) do
      local l_0_6 = nil
      -- DECOMPILER ERROR at PC88: Confused about usage of register: R9 in 'UnsetPending'

      if R9_PC88.image_path ~= nil and R9_PC88.ppid ~= nil then
        TrackPidAndTechniqueBM(R9_PC88.ppid, "T1037", "possible_poshevin_child_b")
        return mp.INFECTED
      end
    end
  end
  do
    return mp.CLEAN
  end
end

