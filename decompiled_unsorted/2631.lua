-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2631.luac 

-- params : ...
-- function num : 0
do
  local l_0_0 = {}
  -- DECOMPILER ERROR at PC7: No list found for R0 , SetList fails

  -- DECOMPILER ERROR at PC8: Overwrote pending register: R1 in 'AssignReg'

  -- DECOMPILER ERROR at PC9: Overwrote pending register: R2 in 'AssignReg'

  for l_0_4,l_0_5 in ("ALFPER:Trojan:Win32/Mscoree.mui!dha")("ALFPER:Trojan:Win64/OpenUp.B!dha") do
    -- DECOMPILER ERROR at PC12: Overwrote pending register: R6 in 'AssignReg'

    if (("ALFPER:Trojan:Win32/ChocoFrag.C!dha").get_mpattribute)(l_0_5) then
      return mp.INFECTED
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

