# A route table association is the process of linking a subnet to a specific route table within a VPC, allowing the subnet to use the routes defined in the associated route table for directing network traffic.

# Creating the Route Table Association to the Public Subnet
resource "aws_route_table_association" "route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.route_table.id
}
