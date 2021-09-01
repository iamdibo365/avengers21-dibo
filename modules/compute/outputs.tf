output "instanceid" {
    value = aws_instance.dev-ec2.*.id
}

output "PublicIP" {
    value = aws_instance.dev-ec2.*.public_ip
}