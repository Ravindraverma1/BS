// main.tf for databricks module

resource "azurerm_databricks_workspace" "this" {
  name                = "${var.name}-dbw"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "standard"
}
