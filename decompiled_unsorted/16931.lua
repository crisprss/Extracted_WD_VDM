-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16931.luac 

-- params : ...
-- function num : 0
(pe.set_image_filename)("\"Lollipop.exe\" INSTALL:|14693||86400|1|0007||")
;
(pe.set_peattribute)("deep_analysis", true)
;
(pe.reemulate)()
return mp.INFECTED

