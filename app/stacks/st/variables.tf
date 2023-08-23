// *** Resource Group Variables ***

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
  type        = string
}

variable "location" {
  description = "Location where the Azure Resource Group will be created."
  type        = string
}

variable "rg_tags" {
  description = "Tags to associate with the Azure Resource Group."
  type        = map(any)
}

// *** Azure Storage Account Variables ***

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
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

variable "st_tags" {
  description = "Tags to associate with the Storage Acccount."
  type        = map(any)
}