resource "aws_instance" "machine-priv" {
  for_each = var.machine-priv

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  subnet_id = each.value

  tags = {
    # usually cloud-native tagging is done in lowercase (that is my default at least) unless specified otherwise
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


# the hell is module_ec2 — skrót.lnk????? - remove xDD
