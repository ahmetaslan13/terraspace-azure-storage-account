// *** Create Resource Group ***

module "resource_group" {
  // Use the "resource_group" module to create an Azure Resource Group.

  // Source of the module.
  source = "../../modules/resource_group"

  // Name of the Azure Resource Group to be created.
  resource_group_name = var.resource_group_name

  // Location for the Azure Resource Group.
  location = var.location

  // Tags to associate with the Azure Resource Group.
  tags = var.rg_tags
}

// *** Create Storage Account ***

module "storage_account" {
  // Use the "storage_account" module to create an Azure Storage Account.

  // Source of the module.
  source = "../../modules/storage-account"

  // Specify the name of the storage account
  storage_account_name = var.storage_account_name

  // Specify the name of the resource group where the storage account will be created
  resource_group_name = module.resource_group.name
  // Specify the location/region for the storage account
  location = module.resource_group.location

  // Specify the storage account's performance tier (Standard or Premium)
  account_tier = var.account_tier

  // Specify the type of replication for the storage account (LRS, GRS, RAGRS, ZRS)
  account_replication_type = var.account_replication_type

  // Tags to associate with the Azure Storage Account.
  tags = var.st_tags

  depends_on = [module.resource_group]
}
