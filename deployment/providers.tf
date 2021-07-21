variable "aws_region" {
  description = "AWS region to launch service in."
  default     = "us-west-2"
}

provider "aws" {
  region     = var.aws_region
}

# but I need to make sure that I also have a provider for us-east-1.
# any resources created with this provider will be placed inside
# the us-east-1 zone. This is important for ACM and CloudFront.
provider "aws" {
  //access_key = var.aws_secret_key_id
  //secret_key = var.aws_secret_key
  region = "us-east-1"
  alias = "us_east_provider"
}
