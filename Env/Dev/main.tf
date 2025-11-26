module "resource_group_name" {
  source         = "../../Module/azurerm_resource_group"
  resource_group = var.resource_group
}

module "aks" {
  source = "../../Module/azurerm_AKS"
  AKS    = var.AKS
}

module "acr" {
  source    = "../../Module/azurerm_ACR"
  azure_acr = var.azure_acr

}
