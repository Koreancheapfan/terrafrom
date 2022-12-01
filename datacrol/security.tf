resource "ncloud_network_acl_rule" "bus-crol-secret-rule" {
  network_acl_no    = ncloud_network_acl.bus-crol-nacl.id
  inbound {
    priority    =  0
    protocol    = "ICMP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
  }
   
  inbound {
    priority    = 20
    protocol    = "TCP"
    rule_action = "ALLOW"
    ip_block    = "221.162.65.184/32"
    port_range  = "1-65535" 
  }
  
  inbound {
    priority    = 199
    protocol    = "TCP"
    rule_action = "DROP"
    ip_block    = "0.0.0.0/0"
    port_range  = "22"
   }

  outbound {
    priority    = 0
    protocol    = "ICMP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
  }

  outbound {
    priority    = 10
    protocol    = "TCP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
    port_range  = "1-65535"
  }

   outbound {
    priority    = 20
    protocol    = "UDP"
    rule_action = "ALLOW"
    ip_block    = "0.0.0.0/0"
    port_range  = "1-65535"
  }
}