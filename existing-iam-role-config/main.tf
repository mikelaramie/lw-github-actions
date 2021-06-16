provider "lacework" {}

provider "aws" {
  region = "us-east-1"
}

module "aws_cloudtrail" {
  source  = "lacework/cloudtrail/aws"
  version = "~> 0.1"

  # Use an existing CloudTrail
  use_existing_cloudtrail = true
  bucket_arn              = "arn:aws:s3:::aws-cloudtrail-logs-767259522535-dd9bb1ae"
  bucket_name             = "aws-cloudtrail-logs-767259522535-dd9bb1ae"

  # Use an existing SNS Topic
  use_existing_sns_topic = true
  sns_topic_arn          = "arn:aws:sns:us-east-1:767259522535:aws-cloudtrail-logs-767259522535-a6248985"

  # Use an existing IAM role
  use_existing_iam_role = true
  iam_role_arn          = "arn:aws:iam::767259522535:role/brkc-lw-role"
  iam_role_name         = "brkc-lw-role"
  iam_role_external_id  = "brkc-lw"
}