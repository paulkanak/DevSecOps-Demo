terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Uncomment and configure for remote state (recommended for teams)
  backend "s3" {
    bucket         = "jerney-terraform-remote-state"
    key            = "eks/test/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "jerney-test-terraform-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Jerney"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}
