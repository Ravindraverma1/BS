module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source                   = "./modules/network"
  name                     = var.name
  location                 = var.location
  resource_group_name      = module.resource_group.name
  address_space            = var.address_space
  app_subnet_prefix        = var.app_subnet_prefix
  sql_subnet_prefix        = var.sql_subnet_prefix
  databricks_subnet_prefix = var.databricks_subnet_prefix
  appgw_subnet_prefix      = var.appgw_subnet_prefix
  tags                     = var.tags
}

module "network_security_group" {
  source              = "./modules/network_security_group"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
}

# module "sql_vm" {
#   source               = "./modules/sql_vm"
#   name                 = var.name
#   location             = var.location
#   resource_group_name  = module.resource_group.name
#   admin_username       = var.admin_username
#   admin_password       = var.admin_password
#   network_interface_id = module.sql_nic.id
# }

module "app_service" {
  source              = "./modules/app_service"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "storage" {
  source              = "./modules/blob_storage"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
}

module "data_factory" {
  source              = "./modules/adf"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
  tags                = var.tags
}

module "databricks" {
  source              = "./modules/databricks"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
}

# module "monitoring" {
#   source              = "./modules/monitoring"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
#   workspace_id        = module.log_analytics.id
# }

# module "log_analytics" {
#   source              = "./modules/log_analytics"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
# }

module "key_vault" {
  source              = "./modules/key_vault"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
  tenant_id           = var.tenant_id
  object_id           = var.object_id
}

# module "api_management" {
#   source              = "./modules/api_management"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
# }

# module "backup" {
#   source              = "./modules/backup"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
# }

module "redis" {
  source              = "./modules/redis"
  name                = var.name
  location            = var.location
  resource_group_name = module.resource_group.name
}

# module "application_gateway" {
#   source              = "./modules/application_gateway"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
#   subnet_id           = module.network.appgw_subnet_id # You can map this to one of the subnets from `network` module
# }

# module "sql_nic" {
#   source              = "./modules/sql_nic"
#   name                = var.name
#   location            = var.location
#   resource_group_name = module.resource_group.name
#   sql_subnet_id       = module.network.sql_subnet_id
# }


