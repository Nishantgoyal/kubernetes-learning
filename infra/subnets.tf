resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_blocks["subnet1"]
  availability_zone = "us-west-2a"  # Change to your preferred AZ

  tags = {
    Name = "Subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_blocks["subnet2"]
  availability_zone = "us-west-2b"  # Change to your preferred AZ

  tags = {
    Name = "Subnet2"
  }
}
