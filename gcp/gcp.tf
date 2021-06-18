terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
    }
  }
}

variable "gcp_org_id" {
  type = string
}

variable "gcp_project_id" {
  type = string
}

provider "google" {
  project = var.gcp_project_id
}

provider "lacework" {}

module "gcp_organization_config" {
  source  = "lacework/config/gcp"
  version = "~> 0.1"

  org_integration = true
  organization_id = var.gcp_org_id
}

module "gcp_organization_audit_log" {
  source  = "lacework/audit-log/gcp"
  version = "~> 0.1"

  bucket_force_destroy         = true
  org_integration              = true
  use_existing_service_account = true
  service_account_name         = module.gcp_organization_config.service_account_name
  service_account_private_key  = module.gcp_organization_config.service_account_private_key
  organization_id              = var.gcp_org_id
}
