# A public subnet is a subnet within a VPC that has a route to the internet via an Internet Gateway, allowing resources within that subnet to have direct access to the internet.
# A private subnet is a subnet within a VPC that does not have a direct route to the internet, making it ideal for hosting resources that require a higher level of security and isolation from the public internet.
# A CIDR block is a notation used to specify the network prefix in an IP address, allowing for the efficient allocation and routing of IP addresses in a network.

# Creating the Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.123.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

  tags = {
    Name = "dev-public-subnet"
  }
}
