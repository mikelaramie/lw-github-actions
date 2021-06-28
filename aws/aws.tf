module "aws_config" {
  source = "lacework/config/aws"
}

module "aws_cloudtrail" {
  source = "lacework/cloudtrail/aws"

  bucket_force_destroy  = true
  use_existing_iam_role = false
}
