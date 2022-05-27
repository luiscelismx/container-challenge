# provider.tf

# Specify the provider and access details
provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  profile                 = "default"
  region                  = var.aws_region

  default_tags {
    tags = {
      Environment         = var.environment
      Region              = var.aws_region
      "Managed by"        = "Terraform"
    }
  }
}