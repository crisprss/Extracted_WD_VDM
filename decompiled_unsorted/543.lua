-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/543.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
local l_0_1 = {}
local l_0_2 = {}
l_0_2[1329399685] = true
l_0_2[2704500393] = true
l_0_2[1062728458] = true
l_0_2[361648151] = true
l_0_2[2427734552] = true
l_0_2[556198365] = true
l_0_2[1843270758] = true
l_0_2[1790169215] = true
l_0_2[3757378872] = true
l_0_2[1464600529] = true
l_0_2[2814149233] = true
l_0_2[485299983] = true
l_0_2[22677355] = true
l_0_2[1858729018] = true
l_0_2[965101779] = true
l_0_2[607213751] = true
l_0_2[1782876296] = true
l_0_2[3733163772] = true
l_0_2[955328102] = true
l_0_2[714105425] = true
l_0_2[2728672913] = true
l_0_2[3905599386] = true
l_0_2[1528939961] = true
l_0_2[300144616] = true
l_0_2[1150828731] = true
l_0_2[2448537363] = true
l_0_2[453676720] = true
l_0_2[1812839974] = true
l_0_2[2893629531] = true
l_0_2[2143886979] = true
l_0_2[1424248128] = true
l_0_2[1308589057] = true
l_0_2[46066374] = true
l_0_2[865217804] = true
l_0_2[1348376386] = true
l_0_2[3377972984] = true
l_0_2[3192977006] = true
l_0_2[540304333] = true
l_0_2[4244901129] = true
l_0_2[1755651274] = true
l_0_2[4054601072] = true
l_0_2[555823874] = true
l_0_2[2649648156] = true
l_0_2[1323115405] = true
l_0_2[3621024311] = true
l_0_2[2698199713] = true
l_0_2[1052235522] = true
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).ppid then
  l_0_1.scenario = (this_sigattrlog[1]).utf8p1
  l_0_1.rawchain = (this_sigattrlog[1]).utf8p2
  if (this_sigattrlog[2]).matched then
    local l_0_3 = (this_sigattrlog[2]).utf8p1
    local l_0_4 = (mp.crc32)(0, l_0_3, 1, #l_0_3)
    if l_0_2[l_0_4] then
      local l_0_5 = {}
      l_0_5.path = (bm.get_imagepath)()
      l_0_5.cmd = l_0_0.command_line
      l_0_5.name = l_0_3
      l_0_1.bmdetection = l_0_5
    end
  end
  do
    do
      if (this_sigattrlog[3]).matched then
        local l_0_6 = {}
        l_0_6.path = (this_sigattrlog[3]).utf8p1
        l_0_6.name = (this_sigattrlog[3]).utf8p2
        l_0_1.filedetection = l_0_6
      end
      local l_0_7 = explode(l_0_1.rawchain, "|")
      for l_0_11 = 1, #l_0_7 - 2 do
        pcall(bm.add_related_process, l_0_7[l_0_11])
      end
      do
        local l_0_12 = (this_sigattrlog[1]).utf8p1 .. "|" .. (this_sigattrlog[1]).image_path
        l_0_1.triggersessioninformation = GetRollingQueue(l_0_12)
        ;
        (bm.add_related_string)("RemoteInvocation", json_encode(l_0_1), bm.RelatedStringBMReport)
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

