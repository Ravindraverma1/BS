resource "azurerm_service_plan" "this" {
  name                = "${var.name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "S1"       # Standard tier
  os_type  = "Windows"  # or "Linux"
}


resource "azurerm_app_service" "frontend" {
  name                = "${var.name}-frontend"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_service_plan.this.id
}

resource "azurerm_app_service" "api" {
  name                = "${var.name}-api"
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_service_plan.this.id
}
