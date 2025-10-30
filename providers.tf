terraform {
  required_version = ">= 1.6.0" # works with OpenTofu and Terraform

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}
