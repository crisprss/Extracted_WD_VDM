-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19662.luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (bm.get_process_relationships)()
  for l_0_5,l_0_6 in ipairs(l_0_1) do
    if l_0_6.image_path ~= nil and l_0_6.ppid ~= nil then
      local l_0_7 = contains
      local l_0_8 = l_0_6.image_path
      local l_0_9 = {}
      -- DECOMPILER ERROR at PC17: No list found for R9 , SetList fails

      -- DECOMPILER ERROR at PC21: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC26: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC27: Overwrote pending register: R8 in 'AssignReg'

      if l_0_7 and l_0_7 then
        l_0_8(l_0_9)
      end
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

