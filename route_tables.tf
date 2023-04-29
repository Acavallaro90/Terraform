# A route table is a set of rules, called routes, that determine the traffic path for network traffic in a VPC, allowing you to control and configure the traffic flow between subnets and the internet or other connected networks.

# Creating the Route Table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "dev-route-table"
  }
}
