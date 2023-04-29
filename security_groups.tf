# Security Groups are a fundamental component of network security that act as virtual firewalls controlling inbound and outbound traffic for AWS resources such as EC2 instances, RDS instances, and Elastic Load Balancers based on a set of rules specified by the user.

# Creating the Security Group
resource "aws_security_group" "security_group" {
  name        = "dev-security-group"
  description = "Dev Security Group"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description = "Allow my IP address"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["65.144.136.162/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
