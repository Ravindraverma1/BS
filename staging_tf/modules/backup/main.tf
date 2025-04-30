resource "azurerm_recovery_services_vault" "this" {
  name                = "${var.name}-vault"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Standard"
}
