variable "resource_group" {
  type = map(object({
    name     = string
    location = string
    tags     = map(string)
  }))

}

variable "AKS" {
  type = map(object({
    cluster_name               = string
    location                   = string
    resource_group_name        = string
    dns_prefix                 = string
    tags                       = optional(map(string))
    identity_type              = string
    dns_prefix_private_cluster = optional(string)

    default_node_pool = map(object({
      node_pool_name = string
      node_count     = number
      vm_size        = string
    }))
  }))
}


variable "azure_acr" {
  type = map(object({
    acr_name            = string
    resource_group_name = string
    location            = string
    sku                 = string
    georeplications = map(object({
      location                = string
      zone_redundancy_enabled = bool
      tags                    = map(string)
    }))

  }))
}
