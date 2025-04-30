variable "name" {
  description = "Prefix for naming resources"
  type        = string
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group where resources will be deployed"
  type        = string
}

variable "admin_username" {
  description = "Admin username for SQL VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for SQL VM (must meet Azure complexity)"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure AD Tenant ID"
  type        = string
}

variable "object_id" {
  description = "Azure AD Object ID for user or SPN to access Key Vault"
  type        = string
}

variable "address_space" {
  description = "CIDR range for the virtual network"
  type        = list(string)
}

variable "app_subnet_prefix" {
  description = "CIDR for the App Service subnet"
  type        = string
}

variable "sql_subnet_prefix" {
  description = "CIDR for the SQL subnet"
  type        = string
}

variable "databricks_subnet_prefix" {
  description = "CIDR for the Databricks subnet"
  type        = string
}

variable "appgw_subnet_prefix" {
  description = "CIDR for the Databricks subnet"
  type        = string
}
variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}

variable "appgw_subnet_id" {
  description = "Optional: subnet ID for Application Gateway (leave blank if using output from module.network)"
  type        = string
  default     = ""
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

