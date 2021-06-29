terraform {
  backend "azurerm" {
    storage_account_name = "mikelaramielwint"
    container_name       = "tfstate"
    key                  = "github.terraform.tfstate"
    access_key           = var.azure_rm_key
  }
}
