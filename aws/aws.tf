

module "aws_config" {
  source = "lacework/config/aws"
}

module "aws_cloudtrail" {
  source = "lacework/cloudtrail/aws"
  cloudtrail_name = var.aws_ct_name
  bucket_force_destroy  = true
  use_existing_iam_role = false
}
