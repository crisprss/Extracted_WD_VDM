-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21616.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((mp.getfilename)()):lower()
l_0_0 = l_0_0:match("([^%\\]+)$")
do
  if (l_0_0:match("%.[^%.]+(%.[^%.]+)$") == nil and "") or l_0_0:match("%.[^%.]+(%.[^%.]+)$") ~= "" then
    local l_0_3 = nil
    if ({[".basta"] = true, [".blackbyte"] = true, [".cerber"] = true, [".cerber2"] = true, [".cerber3"] = true, [".cryptolocker"] = true, [".cuba"] = true, [".cymcrypt"] = true, [".devil"] = true, [".dharma"] = true, [".eight"] = true, [".encryptedyourfiles"] = true, [".enigma"] = true, [".everest"] = true, [".fargo"] = true, [".fs0ciety"] = true, [".karma"] = true, [".l0cked"] = true, [".lockbit"] = true, [".locky"] = true, [".nokoyawa"] = true, [".pandora"] = true, [".quantum"] = true, [".ranzylocked"] = true, [".rook"] = true, [".rsnslocked"] = true, [".shino"] = true, [".thor"] = true, [".v-society"] = true, [".wncry"] = true, [".wncryt"] = true, [".zepto"] = true})[l_0_3] == true then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

