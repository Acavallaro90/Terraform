# Providers in Terraform are plugins that enable communication between Terraform and various cloud providers or services, allowing Terraform to manage the lifecycle of resources within those providers or services.

# Declaring required provider to be AWS
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Declaring the AWS region to be us-east-1
provider "aws" {
  region = "us-east-1"
}
