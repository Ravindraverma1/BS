resource "azurerm_windows_virtual_machine" "this" {
  name                  = "${var.name}-sqlvm"
  resource_group_name   = var.resource_group_name
  computer_name = substr("${var.name}-sql", 0, 15)
  location              = var.location
  size                  = "Standard_E2bds_v5"
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [var.network_interface_id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

source_image_reference {
    publisher = "MicrosoftSQLServer"
    offer     = "SQL2019-WS2019"
    sku       = "sqldev"
    version   = "latest"
  }
}