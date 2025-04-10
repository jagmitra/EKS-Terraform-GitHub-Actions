terraform {
  required_version = ">= 1.9.3, <= 1.11.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 2.7.0"
    }
  }

  backend "s3" {
    bucket         = "bkd24nov23"
    region         = "us-east-1"
    key            = "terraform/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
