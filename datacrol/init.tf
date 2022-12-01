
resource "ncloud_init_script" "bus-crol-init" {
  name    = "bus-crol-init"
  content = file("crol-init.txt")
}