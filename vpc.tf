# A VPC is a virtual network that allows you to create an isolated section of the AWS cloud where you can launch AWS resources in a logically isolated manner.

# Creating the VPC
resource "aws_vpc" "vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "dev-vpc"
  }
}
