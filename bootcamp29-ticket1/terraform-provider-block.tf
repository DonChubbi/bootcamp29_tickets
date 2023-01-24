# Terraform settings Block
terraform {
  required_version = "~> 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
/*
  # AWS S3 remote statefile
  backend "s3" {
    bucket         = "bootcamp29-1-chibuike"
    key            = "bootcamp29-ticket1/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    region         = "us-east-2"
  }
*/
}


# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "DonChubbi"
}