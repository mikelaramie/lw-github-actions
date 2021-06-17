terraform {
  required_providers {
    lacework = {
      source = "lacework/lacework"
      version = "~> 0.3"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

provider "lacework" {}

module "aws_config" {
  source  = "lacework/config/aws"
  version = "~> 0.1"
}

module "aws_cloudtrail" {
  source  = "lacework/cloudtrail/aws"
  version = "~> 0.1"

  bucket_force_destroy  = true
  use_existing_iam_role = false
}