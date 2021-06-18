terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
}

provider "lacework" {
  account    = var.lw_account
  api_key    = var.lw_api_key
  api_secret = var.lw_api_secret
}
