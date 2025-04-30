// outputs.tf for blob_storage 
output "storage_account_name" {
  value = azurerm_storage_account.this.name
}
