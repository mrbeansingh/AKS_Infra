resource_group = {
  rg1 = {
    name     = "dev-rg"
    location = "westus"
    tags = {
      env   = "dev"
      onwer = "terraform"
    }
  }
}

AKS = {
  aks1 = {
    cluster_name        = "dev_aks"
    location            = "westus"
    resource_group_name = "dev-rg"
    dns_prefix          = "exampleaks1"
    tags = {
      env   = "dev"
      onwer = "aks_cluster"
    }
    identity_type = "SystemAssigned"
    default_node_pool = {
      pool1 = {
        node_pool_name = "dev-aks-node"
        node_count     = 2
        vm_size        = "Standard_D2_v2"

      }
    }


  }

}


azure_acr = {
  "acr" = {
    acr_name            = "dev-acr"
    resource_group_name = "dev-rg"
    location            = "west-us"
    sku                 = "Standard"
    georeplications = {
      g1 = {
        location                = "westus"
        zone_redundancy_enabled = true
        tags = {
          env   = "dev"
          onwer = "acr"
        }


      }
    }
  }
}
