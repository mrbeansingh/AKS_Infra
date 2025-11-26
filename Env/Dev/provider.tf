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
    use_oidc             = true
    subscription_id      = "10faea19-035c-4025-9136-201ca3e88e6d"

  }
}

provider "azurerm" {
  features {}
  use_oidc        = true
  subscription_id = "10faea19-035c-4025-9136-201ca3e88e6d"
  client_id       = "260f712d-d409-43c7-b0f6-b613525af877"
  tenant_id       = "d8f47671-2a52-4a2e-badb-9fb565a090c1"
}
