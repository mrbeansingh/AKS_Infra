terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
  }
  backend "azurerm" {
    storage_account_name = "storagebackend1234"
    resource_group_name  = "backed-rg"
    key                  = "aks.tfstate"
    container_name       = "state-file-container"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
}
