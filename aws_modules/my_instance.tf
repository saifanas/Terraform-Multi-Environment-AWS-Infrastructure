# EC2 instance

resource "aws_instance" "instance-my" {
    count = var.instance_count
    ami = var.ami_id  #ubuntu
    instance_type = var.instance_type    #free-tier
    subnet_id = "subnet-0b686815bf2dcc5a5"
    key_name = var.key_name  #key
    vpc_security_group_ids = [var.security_group_id]
    tags = {
       Name = "${var.my-env}-terra-automate"  #Name
    }
}