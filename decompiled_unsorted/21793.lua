-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21793.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.source_port = (this_sigattrlog[3]).np2
l_0_0.destination_address = (this_sigattrlog[2]).utf8p1
l_0_0.destination_port = (this_sigattrlog[2]).np2
l_0_0.protocol_p1 = (this_sigattrlog[4]).np1
l_0_0.protocol_p2 = (this_sigattrlog[4]).np2
l_0_0.client_version_p1 = (this_sigattrlog[5]).np1
l_0_0.client_version_p2 = (this_sigattrlog[5]).np2
l_0_0.username = (string.match)((this_sigattrlog[6]).utf8p1, "Cookie: mstshash=(.*)")
l_0_0.client_security_p2 = (this_sigattrlog[6]).np2
l_0_0.server_negotiation_p1 = (this_sigattrlog[7]).np1
l_0_0.server_negotiation_p2 = (this_sigattrlog[7]).np2
l_0_0.client_encryption_p1 = (this_sigattrlog[8]).np1
l_0_0.client_encryption_p2 = (this_sigattrlog[8]).np2
l_0_0.client_cluster_flags_p1 = (this_sigattrlog[9]).np1
l_0_0.client_cluster_flags_p2 = (this_sigattrlog[9]).np2
local l_0_1 = (this_sigattrlog[3]).utf8p1
AppendToRollingQueue("RDPIncomingConnection", l_0_1, json_encode(l_0_0), 3600, 100)
return mp.INFECTED

