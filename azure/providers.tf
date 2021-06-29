terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
    azuread = {
      source = "hashicorp/azuread"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}
