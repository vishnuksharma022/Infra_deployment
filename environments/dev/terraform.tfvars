dev_rgs = {
  "dev-todo-rg-westus" = {
    location = "West US"
  }
}

dev_acrs = {
  "acr1" = {
    acr_name = "devtodoacrwestus9"
    rg_name  = "dev-todo-rg-westus"
    location = "West US"
    sku      = "Standard"
  }
}

dev_aks_clusters = {
  "dev-todo-aks-westus" = {
    aks_name   = "dev-todo-aks-westus"
    location   = "West US"
    rg_name    = "dev-todo-rg-westus"
    dns_prefix = "devtodoaks"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
    tags = {
      "Environment"    = "dev"
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

servers_dbs = {
  "devtododbsrvwus3" = {
    resource_group_name            = "dev-todo-rg-westus"
    location                       = "Central India"
    version                        = "12.0"
    administrator_login            = "devopsadmin"
    administrator_login_password   = "P@ssw01rd@123"
    allow_access_to_azure_services = true
    dbs                            = ["todoappdb"]
  }
}