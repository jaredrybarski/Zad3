resource "aws_route_table" "public_route_table" {   # public_route_table -> public
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "RT-public"
  }
}


resource "aws_route_table_association" "public_subnet_route_table_association" {  # public_subnet_route_table_association -> public - it should be straightforward enought + both are in the same file

  for_each       = var.rtpubass
  subnet_id      = each.value
  route_table_id = aws_route_table.public_route_table.id
}

