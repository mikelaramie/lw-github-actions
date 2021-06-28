terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "lacework" {
  account    = var.lw_account
  api_key    = var.lw_api_key
  api_secret = var.lw_api_secret
}
