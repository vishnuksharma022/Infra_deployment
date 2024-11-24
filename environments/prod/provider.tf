terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "mishra"
    storage_account_name = "mishrastg"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "e218c587-9161-4518-91c3-1eb54c4095e8"
  features {}
}
