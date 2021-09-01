resource "aws_instance" "dev-ec2" {
    ami = var.ami
    instance_type = var.type
    tags = var.tags
}

resource "aws_ebs_volume" "dev-vol" {
  availability_zone = var.az
  size              = var.volsize
  tags              = var.tags
}

resource "aws_volume_attachment" "dev-vol-att" {
  device_name = var.devname
  volume_id   = aws_ebs_volume.dev-vol.id
  instance_id = aws_instance.dev-ec2.id
}