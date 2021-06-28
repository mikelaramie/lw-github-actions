terraform {
  backend "s3" {
    bucket = "mikelaramie-github-state"
    key    = "github-actions/terraform.tfstate"
    region = "us-east-1"
  }
}
