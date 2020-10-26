module "us-east-1" {
  source = "./modules/us-west-2"
  providers = {
    aws = "aws.us-west-2"
  }
}
module "eu-west-1" {
  source = "./modules/us-east-1"
  providers = {
    aws = "aws.us-east-1"
  }
}
