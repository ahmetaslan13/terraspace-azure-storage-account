// *** Azure Storage Account ***

// This Terraform resource block creates an Azure Storage Account using the azurerm_storage_account resource.

// Define the Azure Storage Account resource
resource "azurerm_storage_account" "storage_account" {
  // Specify the name of the storage account
  name = var.storage_account_name

  // Specify the name of the resource group where the storage account will be created
  resource_group_name = var.resource_group_name

  // Specify the location/region for the storage account
  location = var.location

  // Specify the storage account's performance tier (Standard or Premium)
  account_tier = var.account_tier

  // Specify the type of replication for the storage account (LRS, GRS, RAGRS, ZRS)
  account_replication_type = var.account_replication_type

  // Tags for the resource group are obtained from the specified variable.
  tags = var.tags
}
