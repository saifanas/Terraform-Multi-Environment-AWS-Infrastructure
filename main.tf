module "dev-app" {
  source = "./aws_modules"
  my-env = "dev"
  instance_type = "t3.small"
  ami_id = "ami-019715e0d74f695be"
  key_name = aws_key_pair.deployer.key_name
  security_group_id = aws_security_group.stw_security.id
  instance_count = 1
}

module "stg-app" {
  source = "./aws_modules"
  my-env = "stg"
  instance_type = "t3.micro"
  ami_id = "ami-019715e0d74f695be"
  key_name = aws_key_pair.deployer.key_name
  security_group_id = aws_security_group.stw_security.id
  instance_count = 2
}

module "prd-app" {
  source = "./aws_modules"
  my-env = "prd"
  instance_type = "c7i-flex.large"
  ami_id = "ami-019715e0d74f695be"
  key_name = aws_key_pair.deployer.key_name
  security_group_id = aws_security_group.stw_security.id
  instance_count = 3
}


resource "aws_security_group" "stw_security" {
  name = "stw-security"
  vpc_id = aws_default_vpc.default.id


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

