variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "workspace_id" {
  description = "ID of the Log Analytics workspace"
  type        = string
}