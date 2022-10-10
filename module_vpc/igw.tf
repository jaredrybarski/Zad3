# redundancy in resource path - internet_gateway -> this
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "igw"
  }
}
