resource "ncloud_network_acl" "bus-crol-nacl" {
   vpc_no      = ncloud_vpc.bus-vpc.id
  // below fields is optional
   name        = "bus-crol-nacl"
   description = "crol nacl"
 }

resource "ncloud_network_acl" "bus-dev-nacl" {
   vpc_no      = ncloud_vpc.bus-vpc.id
  // below fields is optional
   name        = "bus-dev-nacl"
   description = "dev nacl"
 }

