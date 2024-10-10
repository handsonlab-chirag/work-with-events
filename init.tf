terraform {

required_version = ">= 1.7.5"
      
 backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "terraformstoragechirag"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "763f5087-49dd-49af-847d-5c8b92a1d66b"
}