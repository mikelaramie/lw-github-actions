// GCP
variable "gcp_org_id" {
  type = string
}

variable "gcp_project_id" {
  type = string
}

// Lacework
variable "lw_account" {
    description = "Lacework Account to integrate with"
    type        = string
}
variable "lw_api_key" {
    description = "API Key to use for Lacework integrations"
    type        = string
    sensitive   = true
}
variable "lw_api_secret" {
    description = "API Secret for lacework_api_key"
    type        = string
    sensitive   = true
}
