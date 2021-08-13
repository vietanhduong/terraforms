resource "aws_key_pair" "key" {
  count = var.key_name != "" ? 1 : 0
  key_name   = var.key_name
  public_key = var.public_key
}

resource "aws_instance" "primary" {
  ami               = var.image
  instance_type     = var.instance_type 
  availability_zone = var.availability_zone 

  tags = {
    "Owner" = var.owner
    "Name"  = var.instance_name
  }

  root_block_device {
    volume_size = var.disk_size
  }

  key_name = var.key_name

  security_groups = [aws_security_group.default.name]
}


