resource "azurerm_network_interface" "this" {
  name                = "${var.name}-sql-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.sql_subnet_id  # 👈 This is valid
    private_ip_address_allocation = "Dynamic"
  }
}
