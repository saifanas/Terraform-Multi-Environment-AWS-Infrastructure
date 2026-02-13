output "my_ec2_ip" {
    value = aws_instance.instance-my.public_ip

}
