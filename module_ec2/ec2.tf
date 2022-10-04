resource "aws_instance" "machine-priv" {
  for_each = var.machine-priv

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  subnet_id = each.value

  tags = {
    Name = "VM"
  }
}

resource "aws_instance" "machine-pub" {
  for_each = var.machine-pub

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  subnet_id = each.value
  key_name  = "mainc"

  tags = {
    Name = "VM"
  }
}
