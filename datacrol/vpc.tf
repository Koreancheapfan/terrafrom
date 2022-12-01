resource "ncloud_vpc" "bus-vpc" {
  name            = "bus-vpc"
  ipv4_cidr_block = "10.0.0.0/16"
}
