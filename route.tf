# A route is a rule within a route table that specifies the destination network for incoming network traffic and the target for sending the traffic to its destination, such as a specific subnet or an Internet Gateway (IGW).

# Creating the Route
resource "aws_route" "route" {
  route_table_id         = aws_route_table.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.internet_gateway.id
}
