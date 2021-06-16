provider "lacework" {}

provider "aws" {
  region = "us-east-1"
}

module "aws_config" {
  source = "../../"
}
