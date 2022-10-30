-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/670.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") then
  return mp.CLEAN
end
local l_0_0 = (mp.get_parent_filehandle)()
if not (mp.is_handle_nil)(l_0_0) then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  local l_0_1, l_0_2 = (mp.IsTrustedFile)(false)
  if l_0_1 == false then
    local l_0_3 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_3, "^.:\\programdata\\chocolatey\\bin\\[^%.\\]+%.exe$") ~= nil then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

