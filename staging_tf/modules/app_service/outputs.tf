output "frontend_url" {
  value = azurerm_app_service.frontend.default_site_hostname
}

output "api_url" {
  value = azurerm_app_service.api.default_site_hostname
}

