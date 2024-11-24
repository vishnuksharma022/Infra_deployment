variable "keyvaults" {
  description = "A map of Key Vault configurations."
  type = map(object({
    location                 = string
    rg_name                  = string
    sku_name                 = string
    purge_protection_enabled = bool
    tags                     = map(string)
    tenant_id                = string
    access_policies = map(object({
      object_id               = string
      key_permissions         = list(string)
      secret_permissions      = list(string)
      certificate_permissions = list(string)
    }))
  }))
  default = {}
}
