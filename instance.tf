# instance for public subnet

resource "aws_instance" "project-1" {
  ami                         = var.instance_ami_id
  instance_type               = "t2.micro"
  security_groups             = ["${aws_security_group.default_sg.id}"]
  subnet_id                   = aws_subnet.publicsubnets.id
  associate_public_ip_address = true
  tags = {
    Name = "my-instance-public"
  }
  user_data = file("script.sh")
}

# instance for private subnet

resource "aws_instance" "project-2" {
  ami             = var.instance_ami_id
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.default_sg.id}"]
  subnet_id       = aws_subnet.privatesubnets.id
  tags = {
    Name = "my-instance-private"
  }
}