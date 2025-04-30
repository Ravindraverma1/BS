name                     = "rg-det-stag-uaen-001"
location                 = "uaenorth"
resource_group_name      = "rg-det-stag-uaen-001"
admin_username           = "adminuser"
admin_password           = "SuperSecret123!" # meets Azure password policy
tenant_id                = "7f5b91a5-58da-41f3-8c25-4f8cfd4ab557"
object_id                = "d40be904-0e63-46e3-9a3d-d427f528e68e" # replace with your actual object ID
subscription_id          = "65ccedb1-9b02-4fb4-8b19-13acfa1e31a9"
address_space            = ["10.0.0.0/16"]
app_subnet_prefix        = "10.0.1.0/24"
sql_subnet_prefix        = "10.0.2.0/24"
databricks_subnet_prefix = "10.0.3.0/24"
appgw_subnet_prefix      = "10.0.4.0/24"


tags = {
  environment = "staging"
}

# Optional: leave blank to use module output
appgw_subnet_id = ""
