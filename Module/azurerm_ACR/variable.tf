
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