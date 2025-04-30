resource "azurerm_api_management" "this" {
  name                = "${var.name}-apim"
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = "Company"
  publisher_email     = "admin@example.com"
  sku_name            = "Developer_1"
}
