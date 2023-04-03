resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  # map_public_ip_on_launch = true
  tags = {
    Name = "ec2-subnet"
  }
}

resource "aws_subnet" "sandrine" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  # map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    Name = "sandrine-subnet"
  }
}