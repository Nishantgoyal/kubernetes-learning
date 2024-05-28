resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"  # Adjust instance type as per your requirements
  subnet_id     = aws_subnet.subnet1.id  # Place the instance in one of your subnets

  tags = {
    Name = "ExampleInstance"
  }
}
resource "aws_security_group_attachment" "instance" {
  security_group_id = aws_security_group.allow_all.id
  subnet_id         = aws_subnet.subnet1.id  # Change to the appropriate subnet
}
