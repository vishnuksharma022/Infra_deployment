module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.dev_rgs
}

module "acr" {
  source = "../../modules/azurerm-acr"
  acrs   = var.dev_acrs
}

module "aks" {
  source = "../../modules/azurerm-aks"
  aks_clusters = var.dev_aks_clusters
}