terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {}

variable "aws_region" {
  type = string
    default_tags {
    tags = var.proton_tags
  }
}
