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
  subscription_id = "077db605-017b-40d2-82f1-5572039ac98d"
  features {}
}
