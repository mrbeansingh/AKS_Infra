resource "azurerm_kubernetes_cluster" "azure_aks" {
  for_each            = var.AKS
  name                = each.value.cluster_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix
  dns_prefix_private_cluster= each.value.dns_prefix_private_cluster


  dynamic "default_node_pool" {
    for_each = each.value.default_node_pool == null ? {} : each.value.default_node_pool
    content {
      name       = default_node_pool.value.node_pool_name
      node_count = default_node_pool.value.node_count
      vm_size    = default_node_pool.value.vm_size
    }

  }

  identity {
    type = each.value.identity_type
  }

  tags = each.value.tags
}


