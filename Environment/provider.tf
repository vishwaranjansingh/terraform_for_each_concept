terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
 features {}
 subscription_id = "5878055b-ed6d-4f89-b493-40fc80beaded"
}