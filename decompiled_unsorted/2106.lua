-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2106.luac 

-- params : ...
-- function num : 0
FileExtensionCheck = function(l_1_0, l_1_1)
  -- function num : 0_0
  do
    if l_1_0 ~= nil and l_1_0:len() > 5 then
      local l_1_2 = (l_1_0:sub(-5)):match("(%.%w+)$")
      if l_1_2 ~= nil and l_1_1[l_1_2] == true then
        return true
      end
    end
    return false
  end
end

