
resource "azurerm_kubernetes_cluster" "dev_aks" {
    for_each = var.aks_var
  name                = each.value.aks_name          # name of the kubernetes cluster #
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = "devaks1"
  

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
network_profile {
  network_plugin = "azure"          
  network_policy = "calico"             
}
  tags = {
    Environment = "dev"
  }
}

# output "client_certificate" {
#   value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
#   sensitive = true
# }

# output "kube_config" {
#   value = azurerm_kubernetes_cluster.example.kube_config_raw

#   sensitive = true
# }