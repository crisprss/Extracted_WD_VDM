-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3066.luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
  if l_0_0 == mp.SCANREASON_ONOPEN or l_0_0 == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
    local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
    if l_0_1:find("\\appdata\\local\\microsoft\\windows\\temporary internet files", 1, true) ~= nil or l_0_1:find("\\appdata\\local\\microsoft\\windows\\inetcache", 1, true) ~= nil then
      local l_0_2 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
      if l_0_2 == "regsvr32.exe" then
        (mp.set_mpattribute)("Lua:ContextRegsvr32AccessTIF.A")
      else
        if l_0_2 == "control.exe" then
          (mp.set_mpattribute)("Lua:ContextControlAccessTIF.A")
        end
      end
    end
  end
end
do
  return mp.CLEAN
end
