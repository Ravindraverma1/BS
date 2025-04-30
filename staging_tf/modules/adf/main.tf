resource "azurerm_data_factory" "this" {
  name                = "${var.name}-adf"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}