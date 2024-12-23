terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }
}
  backend "s3" {
    bucket         = "my-ews-baket11222"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }


provider "aws" {
  region  = var.aws-region
}
