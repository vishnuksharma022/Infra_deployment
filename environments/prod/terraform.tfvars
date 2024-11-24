prod_rgs = {
  "prod-todo-rg-westus" = {
    location = "West US"
  }
}

prod_acrs = {
  "acr1" = {
    acr_name = "prodtodoacrwestus"
    rg_name  = "prod-todo-rg-westus"
    location = "West US"
    sku      = "Standard"
  }
}

prod_aks_clusters = {
  "prod-todo-aks-westus" = {
    aks_name   = "prod-todo-aks-westus"
    location   = "West US"
    rg_name    = "prod-todo-rg-westus"
    dns_prefix = "prodtodoaks"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
    tags = {
      "Environment"    = "prod"
      "CostCenter"     = "TPZ432001"
      "Owner"          = "Randhir Kumar"
      "Application"    = "ToDoApp"
      "Region"         = "West US"
      "Project"        = "ToDoApp"
      "Lifecycle"      = "Prototype"
      "CostCenterCode" = "TPZ432001"
    }
  }
}
