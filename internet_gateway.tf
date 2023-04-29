# An Internet Gateway is a VPC component that enables communication between resources within a VPC and the internet, allowing inbound and outbound traffic to flow in and out of the VPC.

# Creating the Internet Gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "dev-internet-gateway"
  }
}
