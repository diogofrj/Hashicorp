terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
//https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs#features
provider "azurerm" {
  features {}
  subscription_id = "d2f93f5a-ec21-4898-b14e-db4995d3b147"
  tenant_id       = "5111b6c6-d49c-4f30-ae94-f32f6a0e053c"
}
