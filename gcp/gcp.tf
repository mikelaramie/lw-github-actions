/* Deleting until ALLY-545 is resolved
module "gcp_organization_config" {
  source = "lacework/config/gcp"

  org_integration = true
  organization_id = var.gcp_org_id
}
*/

module "gcp_organization_audit_log" {
  source = "lacework/audit-log/gcp"

  bucket_force_destroy         = true
  org_integration              = true
  use_existing_service_account = false
  //service_account_name         = module.gcp_organization_config.service_account_name
  //service_account_private_key  = module.gcp_organization_config.service_account_private_key
  organization_id              = var.gcp_org_id
}
