variable "my-env" {
    description = "Thid is the environment for infra"
    type = string

}

variable "ami_id" {
    description = "This is the AMI ID for EC2"
    type = string

}

variable "instance_type" {
    description = "This is the type of instance for EC2"
    type = string

}

variable "instance_count" {
    description = "This is the count of instance for EC2"
    type = number
}

variable "key_name" {
    type = string

}

variable "security_group_id" {
    type = string

}