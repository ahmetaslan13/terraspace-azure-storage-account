// *** Storage Account Stack Outputs ***

// Resource Group Name output from the resource group module.
output "resource_group_name" {
  description = "Name of the Azure Resource Group from the resource group module."
  value       = module.resource_group.name
}

// Define an output for the Storage Account ID
output "storage_account_id" {
  description = "The ID of the created Azure Storage Account"

  // Value for the output, using the ID of the storage account from the "module.storage_account" reference
  value = module.storage_account.storage_account_id
}
