# An EC2 Instance is a virtual server in the cloud that can be launched and configured to run a variety of applications or workloads, offering scalable compute capacity in the cloud with on-demand provisioning and flexible pricing options.

# Creating the Windows EC2 Instance
resource "aws_instance" "bastion" {
  ami                    = "ami-0bde1eb2c18cb2abe"
  instance_type          = "t2.micro"
  key_name               = "dev-key-pair"
  vpc_security_group_ids = [aws_security_group.security_group.id]
  subnet_id              = aws_subnet.public_subnet.id
  user_data              = file("user_data.tpl")

  # Changing the hard drive size to 30 GB rather than the traditional 8 GB
  root_block_device {
    volume_size = 30
  }

  tags = {
    Name = "dev-bastion"
  }
}
