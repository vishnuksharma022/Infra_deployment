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
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "d37b3ed6-ba40-48a8-8ffe-8e564707c5e2"
  features {}
}
