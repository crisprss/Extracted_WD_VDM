-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15891.luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.amd64_image and pehdr.NumberOfSections == 10 then
  return mp.INFECTED
end
return mp.CLEAN
