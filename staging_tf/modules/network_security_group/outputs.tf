output "sql_nsg_id" {
  value = azurerm_network_security_group.sql_nsg.id
}

output "app_nsg_id" {
  value = azurerm_network_security_group.app_nsg.id
}