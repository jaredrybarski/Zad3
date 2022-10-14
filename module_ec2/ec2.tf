resource "aws_instance" "machine_priv" {
  for_each = var.machine_priv

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  
  subnet_id = each.value

  tags = {
    # usually cloud-native tagging is done in lowercase (that is my default at least) unless specified otherwise
    Name = "vm"
  }
}

resource "aws_instance" "machine_pub" {
  for_each = var.machine_pub

  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  subnet_id = each.value
  key_name  = "mainc"

  tags = {
    Name = "vm"
  }
}


# the hell is module_ec2 — skrót.lnk????? - remove xDD
