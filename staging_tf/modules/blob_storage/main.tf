resource "azurerm_storage_account" "this" {
  name                     = lower(substr(replace("${var.name}dtestg", "-", ""), 0, 24))
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "blob" {
  name                  = "data"
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}
