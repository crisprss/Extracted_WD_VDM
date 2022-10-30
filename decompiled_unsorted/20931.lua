-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20931.luac 

-- params : ...
-- function num : 0
local l_0_0 = (pe.get_netmetadata)()
local l_0_1 = l_0_0.usheap_RVA
local l_0_2 = l_0_0.usheap_size
local l_0_3 = l_0_1 + pehdr.ImageBase
local l_0_4 = (pe.vm_search)(l_0_3, l_0_3 + 80, "\144\" \v0-9A-Za-z/+\144\000", nil, pe.VM_SEARCH_BM)
if l_0_4 == 4294967295 then
  return mp.CLEAN
end
local l_0_5 = (pe.vm_search)(l_0_4 + 8, l_0_4 + l_0_2, "\000\000\144\000", nil, pe.VM_SEARCH_BM)
if l_0_5 == 4294967295 then
  return mp.CLEAN
end
local l_0_6 = l_0_5 - l_0_4
;
(mp.readprotection)(false)
local l_0_7 = (pe.mmap_va)(l_0_4, l_0_6)
;
(mp.vfo_add_buffer)(l_0_7, "[ldstr_msil]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED

