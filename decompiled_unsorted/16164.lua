-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16164.luac 

-- params : ...
-- function num : 0
triggerMemoryScanOnProcessTree(true, true, "SMS_H", 5000, "Behavior:Win32/NotepadInject.SA")
add_parents()
return mp.INFECTED
