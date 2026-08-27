terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraformstate-eastus"
    storage_account_name = "terraformstorageks"
    container_name       = "terraformstate"
    key                  = "staging.tfstate"
    use_azuread_auth     = true
  }
}