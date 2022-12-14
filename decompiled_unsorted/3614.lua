-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3614.luac 

-- params : ...
-- function num : 0
if not peattributes.isdriver then
  return mp.CLEAN
end
if peattributes.no_security == true then
  (mp.set_mpattribute)("BM_ESRP:Lua:UnsignedDriver")
  return mp.CLEAN
end
local l_0_0 = (pe.get_versioninfo)()
if l_0_0 == nil then
  (mp.set_mpattribute)("BM_ESRP:Lua:UnversionedSignedDriver")
  return mp.CLEAN
end
if l_0_0.OriginalFilename == nil then
  return mp.CLEAN
end
local l_0_1 = ((l_0_0.OriginalFilename):lower()):match("(.+)%.")
local l_0_2 = (string.sub)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), 0, -5)
if (string.find)(l_0_2, l_0_1, 1, true) == nil then
  (mp.set_mpattribute)("BM_ESRP:Lua:RenamedSignedDriver")
else
  ;
  (mp.set_mpattribute)("BM_ESRP:Lua:VersionedSignedDriver")
end
local l_0_3 = {}
l_0_3.aiwsys = "Aiwsys"
l_0_3.bandai = "Bandai"
l_0_3.capcom = "Capcom"
l_0_3.cpuz = "Cpuz"
l_0_3.elbycdio = "Elbycdio"
l_0_3.goad = "Goad"
l_0_3.initdrv = "Initdrv"
l_0_3.jtaxdfgznc = "Jtaxdfgznc"
l_0_3.kmclass_x64 = "Kmclass_x64"
l_0_3.libnicm = "Libnicm"
l_0_3.nicm = "Nicm"
l_0_3.nscm = "Nscm"
l_0_3.rwdrv = "Rwdrv"
l_0_3.termdd = "Termdd"
l_0_3.tlsdrivegtw = "Tlsdrivegtw"
l_0_3.vboxdrv = "Vboxdrv"
l_0_3.xueman3 = "Xueman3"
l_0_3.HwOs2Ec = "HwOs2Ec"
l_0_3.phymem = "Phymem"
l_0_3.asrdrv = "AsrDrv"
l_0_3.atillk64 = "AtiLlk"
l_0_3.bs_hwmio64_w10 = "BS_HWMIO64_W10"
l_0_3.bs_i2cio = "BS_I2c64"
l_0_3.bsmi = "BSMIx64"
l_0_3.ucorew64 = "Ucorew64"
l_0_3.ucoresys = "Ucoresys"
l_0_3.amifldrv64 = "amifldrv64"
l_0_3.glckio2 = "GLCKIO2"
l_0_3.gvcidrv = "GVCIDrv"
l_0_3.gdrv = "GDrv"
l_0_3.gvcidrv64 = "GVCIDrv64"
l_0_3.segwindrv = "segwindrv"
l_0_3.segwindrvx64 = "segwindrvx64"
l_0_3.msio64 = "MSIO64"
l_0_3.ntiolib_x64 = "NTIOLib_X64"
l_0_3.ntiolib = "NTIOLib"
l_0_3.nbiolib_x64 = "NBIOLib_X64"
l_0_3.nbiolib = "NBIOLib"
l_0_3.winring0x64 = "WinRing0x64"
l_0_3.winring0 = "WinRing0"
l_0_3.modapi = "MODAPI"
l_0_3.nvflash = "NvFlash"
l_0_3.rtkio64 = "rtkio64"
l_0_3.rtkio86 = "rtkio86"
l_0_3.rtkiow8x86 = "rtkiow8x86"
l_0_3.rtkiow8x64 = "rtkiow8x64"
l_0_3.rtkiow10x86 = "rtkiow10x86"
l_0_3.rtkiow10x64 = "rtkiow10x64"
l_0_3.speedfan = "speedfan"
l_0_3.sfdrvx32 = "speedfan"
l_0_3.sfdrvx64 = "speedfan"
l_0_3.kevp64 = "powertool"
l_0_3.amdryzenmasterdriver = "amdryzenmaster"
if l_0_3[l_0_1] ~= nil then
  (mp.set_mpattribute)("BM_ESRP:Lua:" .. l_0_3[l_0_1])
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_4 = (pe.get_fixedversioninfo)()
local l_0_5 = l_0_4.FileVersion
if l_0_5 ~= nil then
  local l_0_6 = {}
  local l_0_7 = {}
  -- DECOMPILER ERROR at PC161: No list found for R7 , SetList fails

  -- DECOMPILER ERROR at PC164: Overwrote pending register: R8 in 'AssignReg'

  -- DECOMPILER ERROR at PC165: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC166: Overwrote pending register: R10 in 'AssignReg'

  l_0_6.elbycdio, l_0_7 = l_0_7, {"cpuz_asr_driver", 0, 2.814749769728e+14}
  l_0_6.libnicm, l_0_7 = l_0_7, {"libnicm_asr_driver", 0, 8.444292258857e+14}
  l_0_6.mtcbsv64, l_0_7 = l_0_7, {"mtcbsv64_asr_driver", 0, 5.9109831008584e+15}
  l_0_6.nicm, l_0_7 = l_0_7, {"nicm_asr_driver", 0, 8.444292258857e+14}
  l_0_6.nscm, l_0_7 = l_0_7, {"nscm_asr_driver", 0, 8.444292258857e+14}
  l_0_6.sandra, l_0_7 = l_0_7, {"sandra_asr_driver", 0, 2.8148013067141e+15}
  l_0_6.rtkio64, l_0_7 = l_0_7, {"rtkio64_asr_driver", 0, 0}
  l_0_6.rtkiow10x64, l_0_7 = l_0_7, {"rtkiow10x64_asr_driver", 0, 0}
  l_0_6.rtkiow8x64, l_0_7 = l_0_7, {"rtkiow8x64_asr_driver", 0, 0}
  l_0_6.bsmi, l_0_7 = l_0_7, {"bsmi_asr_driver", 0, 2.8147497671066e+14}
  l_0_6.bs_hwmio64_w10, l_0_7 = l_0_7, {"bs_hwmio64_asr_driver", 0, 2.8147498854648e+15}
  l_0_6.bs_i2cio, l_0_7 = l_0_7, {"biostar_io_asr_driver", 0, 2.8147927167795e+14}
  l_0_6.ntiolib, l_0_7 = l_0_7, {"ntiolib_asr_driver", 0, 2.8147497671066e+14}
  l_0_6.nchgbios2x64, l_0_7 = l_0_7, {"nchgbios2x64_asr_driver", 0, 1.1259084970394e+15}
  l_0_6.segwindrvx64, l_0_7 = l_0_7, {"segwindrvx64_asr_driver", 0, 2.8147497671524e+16}
  l_0_6.gdrv, l_0_7 = l_0_7, {"gdrv_asr_driver", 0, 0}
  l_0_6["kernel-bridge"], l_0_7 = l_0_7, {"kernelbridge_asr_driver", 0, 0}
  l_0_6.rwdrv, l_0_7 = l_0_7, {"rwdrv_asr_driver", 0, 0}
  l_0_6.speedfan, l_0_7 = l_0_7, {"speedfan_asr_driver", 0, 0}
  l_0_6.sfdrvx32, l_0_7 = l_0_7, {"speedfan_asr_driver", 0, 0}
  l_0_6.sfdrvx64, l_0_7 = l_0_7, {"speedfan_asr_driver", 0, 0}
  l_0_6.kevp64, l_0_7 = l_0_7, {"powertoolx64_asr_driver", 0, 0}
  l_0_6.amdryzenmasterdriver, l_0_7 = l_0_7, {"amdryzenmaster_asr_driver", 0, 2.8149645154714e+14}
  l_0_6.viragt, l_0_7 = l_0_7, {"viragt_asr_driver", 0, 2.8181857409434e+14}
  l_0_6.viragt64, l_0_7 = l_0_7, {"viragt64_asr_driver", 0, 2.8147497671067e+14}
  l_0_6.kprocesshacker, l_0_7 = l_0_7, {"processhacker_asr_driver", 0, 0}
  l_0_6.physmem, l_0_7 = l_0_7, {"physicalmem_asr_driver", 0, 0}
  l_0_6.phymem, l_0_7 = l_0_7, {"phymem_asr_driver", 0, 0}
  l_0_6.amp, l_0_7 = l_0_7, {"sm_amp_asr_driver", 0, 0}
  l_0_6.iqvw64, l_0_7 = l_0_7, {"iqvw64_asr_driver", 2.8148786161255e+14, 2.8148786161255e+14}
  l_0_6.winring0, l_0_7 = l_0_7, {"winring0_asr_driver", 0, 0}
  l_0_6.hpportiox64, l_0_7 = l_0_7, {"hpportiox64_asr_driver", 0, 0}
  l_0_6.lha, l_0_7 = l_0_7, {"lha_asr_driver", 0, 0}
  l_0_6.gmer64, l_0_7 = l_0_7, {"gmer_asr_driver", 0, 0}
  l_0_6.pchunter, l_0_7 = l_0_7, {"pchunter_asr_driver", 0, 0}
  l_0_6.tvichw64, l_0_7 = l_0_7, {"tvicp_asr_driver", 0, 0}
  l_0_6.tvicport, l_0_7 = l_0_7, {"tvicf_asr_driver", 0, 0}
  l_0_6.ssport, l_0_7 = l_0_7, {"ssport_asr_driver", 2.8147497671066e+14, 2.8147497671066e+14}
  l_0_6.vmdrv, l_0_7 = l_0_7, {"vmdrv_asr_driver", 0, 0}
  l_0_6.aswarpot, l_0_7 = l_0_7, {"aswarpot_asr_driver", 0, 5.9109959857603e+15}
  l_0_6.bs_rcio64, l_0_7 = l_0_7, {"bs_rcio64_asr_driver", 0, 0}
  l_0_6.atszio, l_0_7 = l_0_7, {"atszio_asr_driver", 0, 8590000135}
  l_0_6.lgcoretemp, l_0_7 = l_0_7, {"lgcoretemp_asr_driver", 0, 2.8147497671066e+14}
  l_0_6.sandbox, l_0_7 = l_0_7, {"agsandbox_asr_driver", 0, 0}
  l_0_6.amdpowerprofiler, l_0_7 = l_0_7, {"amdpowerprofiler_asr_driver", 1.6888498602639e+15, 1.6888541552312e+15}
  l_0_6.aswsnx, l_0_7 = l_0_7, {"aswsnx_asr_driver", 0, 4.7850831940157e+15}
  l_0_6.asrdrv, l_0_7 = l_0_7, {"asrdrv_asr_driver", 0, 0}
  l_0_6.hwos2ec, l_0_7 = l_0_7, {"hwos2ec_asr_driver", 0, 2.8147497671066e+14}
  l_0_6.bs_def64, l_0_7 = l_0_7, {"bsdef64_asr_driver", 0, 0}
  l_0_6.lenovodiagnosticsdriver, l_0_7 = l_0_7, {"lenovodiag_asr_driver", 0, 2.3058430092137e+18}
  l_0_6.superbmc, l_0_7 = l_0_7, {"superbmc_asr_driver", 0, 5.6294995342131e+14}
  l_0_6.procexp, l_0_7 = l_0_7, {"procexp_asr_driver", 0, 0}
  l_0_6.iobitunlocker, l_0_7 = l_0_7, {"iobitunlocker_asr_driver", 0, 0}
  l_0_6.agent64, l_0_7 = l_0_7, {"agent64_asr_driver", 0, 0}
  l_0_6.nvflash, l_0_7 = l_0_7, {"nvflash_asr_driver", 0, 2.8151363141632e+14}
  l_0_6.inpoutx64, l_0_7 = l_0_7, {"inpoutx64_asr_driver", 0, 0}
  l_0_6.alsysio, l_0_7 = l_0_7, {"alsysio_asr_driver", 0, 0}
  l_0_6.atillk64, l_0_7 = l_0_7, {"atillk64_asr_driver", 0, 0}
  l_0_6.hw, l_0_7 = l_0_7, {"hw_asr_driver", 0, 1.4073748835533e+15}
  l_0_6.wiseunlo, l_0_7 = l_0_7, {"wiseunlo_asr_driver", 0, 0}
  l_0_6.klmd, l_0_7 = l_0_7, {"klmd_asr_driver", 0, 0}
  l_0_6.tmel, l_0_7 = l_0_7, {"tmel_asr_driver", 0, 0}
  l_0_6.lv561v64, l_0_7 = l_0_7, {"lv561v64_asr_driver", 0, 0}
  l_0_6.symelam, l_0_7 = l_0_7, {"symelam_asr_driver", 0, 5.6296713329058e+14}
  l_0_7 = "hwrwdrv"
  local l_0_8 = {}
  -- DECOMPILER ERROR at PC552: No list found for R8 , SetList fails

  -- DECOMPILER ERROR at PC556: Overwrote pending register: R9 in 'AssignReg'

  -- DECOMPILER ERROR at PC557: Overwrote pending register: R10 in 'AssignReg'

  -- DECOMPILER ERROR at PC558: Overwrote pending register: R11 in 'AssignReg'

  l_0_6[l_0_7], l_0_8 = l_0_8, {"hwrwdrv_asr_driver", 0, 0}
  -- DECOMPILER ERROR at PC561: Overwrote pending register: R7 in 'AssignReg'

  l_0_6[l_0_7], l_0_8 = l_0_8, {"otipcibus64_asr_driver", 0, 0}
  -- DECOMPILER ERROR at PC568: Overwrote pending register: R7 in 'AssignReg'

  l_0_6[l_0_7], l_0_8 = l_0_8, {"asrsetupdrv_asr_driver", 0, 0}
  -- DECOMPILER ERROR at PC575: Overwrote pending register: R7 in 'AssignReg'

  l_0_6[l_0_7], l_0_8 = l_0_8, {"hwring0_asr_driver", 0, 0}
  -- DECOMPILER ERROR at PC582: Overwrote pending register: R7 in 'AssignReg'

  l_0_6[l_0_7], l_0_8 = l_0_8, {"dghwmonitor_asr_driver", 0, 0}
  -- DECOMPILER ERROR at PC589: Overwrote pending register: R7 in 'AssignReg'

  l_0_8 = nil
  if l_0_7 ~= l_0_8 then
    l_0_8 = 2
    l_0_8 = l_0_7[l_0_8]
    local l_0_9 = l_0_7[3]
    if (l_0_8 <= l_0_5 and l_0_5 <= l_0_9) or l_0_8 == 0 and l_0_9 == 0 then
      (mp.set_mpattribute)("BM_ESRP:Lua:" .. l_0_7[1])
      ;
      (mp.set_mpattribute)("BM_ESRP:Lua:VulnerableAsrDriverMatched")
    end
  end
end
do
  return mp.CLEAN
end

