module "shared-resources"{
  source = "./modules/shared-resources"
  providers = {
    aws = aws.us-west-2
  }
}

module "us-west-2" {
  source = "./modules/us-west-2"
  providers = {
    aws = aws.us-west-2
  }
  aws_iam_role = module.shared-resources.aws_iam_role
  aws_iam_role_policy_attachment = module.shared-resources.aws_iam_role_policy_attachment
  app_image = var.app_image

}

module "us-east-1" {
  source = "./modules/us-east-1/"
  providers = {
    aws = aws.us-east-1
  }
  aws_iam_role = module.shared-resources.aws_iam_role
  aws_iam_role_policy_attachment = module.shared-resources.aws_iam_role_policy_attachment
  app_image = var.app_image
}
