resource "aws_security_group" "allow_all" {
  vpc_id = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all"
  }
}


resource "aws_security_group_attachment" "subnet1" {
  security_group_id = aws_security_group.allow_all.id
  subnet_id         = aws_subnet.subnet1.id
}

resource "aws_security_group_attachment" "subnet2" {
  security_group_id = aws_security_group.allow_all.id
  subnet_id         = aws_subnet.subnet2.id
}
