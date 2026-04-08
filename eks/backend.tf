terraform {
  required_version = "> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "demo-terraform-state-bucket-12345"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    use_lockfile   = true
  }
}

provider "aws" {
  region = var.aws-region
}
