# public subnet code here 
# Create a Public Subnets.
resource "aws_subnet" "publicsubnets" { # Creating Public Subnets
  vpc_id            = var.my_vpc_id
  cidr_block        = var.cidr_public_subnet
  availability_zone = "ap-south-1a"
  tags = {
    Name = "public_subnet"
  }
}



# private subnet code here

resource "aws_subnet" "privatesubnets" { # Creating private Subnets
  vpc_id            = var.my_vpc_id
  cidr_block        = var.cidr_private_subnet
  availability_zone = "ap-south-1a"
  tags = {
    Name = "private_subnet"
  }
}