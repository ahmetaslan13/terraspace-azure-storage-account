// *** Resouce Group ***
// Define the name of the resource group
resource_group_name = "rg-st-example"

// Specify the geographic location for the resource group
location = "canadacentral"

// Add tags to the resource group for better organization and management
rg_tags = {
  Enviroment = "dev"
}

// *** Storage Account ***
  storage_account_name     = "storageaccountname1317"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  st_tags = {
    environment = "dev"
  }
