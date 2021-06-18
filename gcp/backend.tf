terraform {
  backend "gcs" {
    bucket = "lw-github-actions-demo"
    prefix = "gcp-integrations/"
  }
}
