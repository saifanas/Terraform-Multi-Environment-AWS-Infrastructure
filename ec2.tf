# Key pair

resource "aws_key_pair" "deployer" {
    key_name = "saif-terra-key"
    public_key = file("/home/ec2-user/terraform-practice/terra-key.pub")

}


# Default Vpc

resource "aws_default_vpc" "default" {

}


# Security Group


resource "aws_security_group" "stw-security" {
    name = "allow ports"
    description = "This SG is open to Ports for Ec2 instance"
    vpc_id = aws_default_vpc.default.id  #interpolation

    # Incoming
    ingress {
        description = "This is for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        description = "This is for outgoing internet"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }


}



resource "aws_instance" "instance-my" {
    ami = var.ami_id  #ubuntu
    instance_type = "t3.micro"     #free-tier
    subnet_id = "subnet-0b686815bf2dcc5a5"
    key_name = aws_key_pair.deployer.key_name  #key
    vpc_security_group_ids = [aws_security_group.stw-security.id]
    tags = {
       Name = "terra-automate"  #Name
    }
}

