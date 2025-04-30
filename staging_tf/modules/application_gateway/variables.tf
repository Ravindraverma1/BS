variable "name" {}
variable "location" {}
variable "resource_group_name" {}

variable "subnet_id" {
  description = "Subnet ID to associate with the Application Gateway"
  type        = string
}

