output "vnet_id" {
  value = azurerm_virtual_network.this.id
}
output "sql_subnet_id" {
  value = azurerm_subnet.sql_subnet.id
}

output "appgw_subnet_id" {
  value = azurerm_subnet.appgateway.id
}
