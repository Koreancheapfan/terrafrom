resource "ncloud_subnet" "bus-crol-subnet" {
  vpc_no         = ncloud_vpc.bus-vpc.id
  subnet         = "10.0.2.0/24"
  zone           = "KR-2"
  network_acl_no = ncloud_network_acl.bus-crol-nacl.id
  subnet_type    = "PUBLIC" // PUBLIC(Public) | PRIVATE(Private)
  // below fields is optional
  name           = "bus-crol-subnet"
  usage_type     = "GEN"    // GEN(General) | LOADB(For load balancer)
}

resource "ncloud_subnet" "bus-dev-subnet" {
  vpc_no         = ncloud_vpc.bus-vpc.id
  subnet         = "10.0.1.0/24"
  zone           = "KR-2"
  network_acl_no = ncloud_network_acl.bus-dev-nacl.id
  subnet_type    = "PUBLIC" // PUBLIC(Public) | PRIVATE(Private)
  // below fields is optional
  name           = "bus-dev-subnet"
  usage_type     = "GEN"    // GEN(General) | LOADB(For load balancer)
}