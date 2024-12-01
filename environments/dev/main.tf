module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.dev_rgs
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm-acr"
  acrs       = var.dev_acrs
}

module "aks" {
  depends_on   = [module.rg]
  source       = "../../modules/azurerm-aks"
  aks_clusters = var.dev_aks_clusters
}

module "database" {
  depends_on  = [module.rg]
  source      = "../../modules/azurerm-database"
  servers_dbs = var.servers_dbs
}