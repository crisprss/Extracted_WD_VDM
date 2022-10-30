-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3736.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
do
  if l_0_0 and l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if l_0_1 ~= nil and (string.find)(l_0_1, "/node_modules/", 1, true) ~= nil and ((string.find)(l_0_1, "ionic-icon", 1, true) ~= nil or (string.find)(l_0_1, "ionicio", 1, true) ~= nil or (string.find)(l_0_1, "icon-package", 1, true) ~= nil or (string.find)(l_0_1, "ajax-libs", 1, true) ~= nil or (string.find)(l_0_1, "umbrellaks", 1, true) ~= nil or (string.find)(l_0_1, "ajax-library", 1, true) ~= nil or (string.find)(l_0_1, "iconion-package", 1, true) ~= nil or (string.find)(l_0_1, "package-sidr", 1, true) ~= nil or (string.find)(l_0_1, "kbrstore", 1, true) ~= nil or (string.find)(l_0_1, "icons-package", 1, true) ~= nil or (string.find)(l_0_1, "subek", 1, true) ~= nil or (string.find)(l_0_1, "package-show", 1, true) ~= nil or (string.find)(l_0_1, "package-icon", 1, true) ~= nil or (string.find)(l_0_1, "icons-packages", 1, true) ~= nil or (string.find)(l_0_1, "ionicon-package", 1, true) ~= nil or (string.find)(l_0_1, "icons-pack", 1, true) ~= nil or (string.find)(l_0_1, "pack-icons", 1, true) ~= nil or (string.find)(l_0_1, "ionicons-pack", 1, true) ~= nil or (string.find)(l_0_1, "package-ionicons", 1, true) ~= nil or (string.find)(l_0_1, "footericon", 1, true) ~= nil or (string.find)(l_0_1, "swiper-bundle", 1, true) ~= nil or (string.find)(l_0_1, "atezzz", 1, true) ~= nil or (string.find)(l_0_1, "small-sm", 1, true) ~= nil or (string.find)(l_0_1, "pern-valids", 1, true) ~= nil or (string.find)(l_0_1, "lifeculer", 1, true) ~= nil or (string.find)(l_0_1, "proc-title", 1, true) ~= nil or (string.find)(l_0_1, "libz.jquery", 1, true) ~= nil) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

