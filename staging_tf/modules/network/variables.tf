variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "address_space" {
  type = list(string)
}
variable "app_subnet_prefix" {}
variable "sql_subnet_prefix" {}
variable "databricks_subnet_prefix" {}
variable "tags" {
  type = map(string)
}

variable "appgw_subnet_prefix" {
  description = "Subnet CIDR block for the Application Gateway"
  type        = string
}