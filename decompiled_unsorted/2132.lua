-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2132.luac 

-- params : ...
-- function num : 0
Infrastructure_FirstTimeAT = function()
  -- function num : 0_0
  if isFirstTimeATActive() then
    initPersistContextFTAT(2)
    initPersistContextFTAT(3)
  end
end


