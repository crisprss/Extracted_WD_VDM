-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21457.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_2 = nil, nil
do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).ppid ~= nil then
    local l_0_1, l_0_3 = , (this_sigattrlog[1]).ppid
    l_0_1 = (mp.GetProcessCommandLine)(l_0_3)
  end
  local l_0_4 = nil
  -- DECOMPILER ERROR at PC31: Overwrote pending register: R2 in 'AssignReg'

  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).ppid ~= nil then
    local l_0_5, l_0_6 = , nil
    -- DECOMPILER ERROR at PC37: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC45: Overwrote pending register: R3 in 'AssignReg'

    if l_0_6 ~= nil then
      if (string.find)(l_0_4, nil) ~= nil and l_0_5 == l_0_6 then
        return mp.INFECTED
      else
        local l_0_7 = nil
        if (mp.GetParentProcInfo)(l_0_5) ~= nil and ((mp.GetParentProcInfo)(l_0_5)).image_path ~= nil then
          local l_0_8 = nil
          if ((string.lower)(((mp.GetParentProcInfo)(l_0_5)).image_path)):match("\\([^\\]+)$") ~= nil and (string.find)(((string.lower)(((mp.GetParentProcInfo)(l_0_5)).image_path)):match("\\([^\\]+)$"), l_0_7) ~= nil and ((mp.GetParentProcInfo)(l_0_5)).ppid == l_0_6 then
            return mp.INFECTED
          else
            local l_0_9 = nil
            if (mp.GetParentProcInfo)(((mp.GetParentProcInfo)(l_0_5)).ppid) ~= nil and ((mp.GetParentProcInfo)(((mp.GetParentProcInfo)(l_0_5)).ppid)).image_path ~= nil then
              local l_0_10 = nil
              if ((string.lower)(((mp.GetParentProcInfo)(((mp.GetParentProcInfo)(l_0_5)).ppid)).image_path)):match("\\([^\\]+)$") ~= nil and (string.find)(((string.lower)(((mp.GetParentProcInfo)(((mp.GetParentProcInfo)(l_0_5)).ppid)).image_path)):match("\\([^\\]+)$"), l_0_7) and ((mp.GetParentProcInfo)(((mp.GetParentProcInfo)(l_0_5)).ppid)).ppid == l_0_6 then
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
    do
      return mp.CLEAN
    end
  end
end

