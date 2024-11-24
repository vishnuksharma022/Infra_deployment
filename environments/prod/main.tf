module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.prod_rgs
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm-acr"
  acrs       = var.prod_acrs
}

module "aks" {
  depends_on   = [module.rg]
  source       = "../../modules/azurerm-aks"
  aks_clusters = var.prod_aks_clusters
}
