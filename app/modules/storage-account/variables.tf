// *** Azure Storage Account Variables ***

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group for the Storage Account"
  type        = string
}

variable "location" {
  description = "The location/region for the Azure Storage Account"
  type        = string
}

variable "account_tier" {
  description = "The performance tier of the Azure Storage Account (Standard or Premium)"
  type        = string
}

variable "account_replication_type" {
  description = "The type of replication for the Azure Storage Account (LRS, GRS, RAGRS, ZRS)"
  type        = string
}
variable "tags" {
  description = "Tags to associate with the Storage Acccount."
  type        = map(any)
}