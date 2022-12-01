resource "ncloud_server" "terraform-server" {
  subnet_no                 = ncloud_subnet.bus-dev-subnet.id
  name                      = "dev-terraform"
  server_image_product_code = "SW.VSVR.OS.LNX64.UBNTU.SVR1804.B050"
  login_key_name            = "ncw2"
  
}

resource "ncloud_server" "crol-server" {
  subnet_no                 = ncloud_subnet.bus-dev-subnet.id
  name                      = "crol-terraform"
  server_image_product_code = "SW.VSVR.OS.LNX64.UBNTU.SVR1804.B050"
  login_key_name            = "ncw2"
  
}