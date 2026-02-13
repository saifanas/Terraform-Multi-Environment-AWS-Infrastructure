variable "dynamo_table_name" {
    type = string
    default = "stw-free-bootcamp-table"
    description = "This is table name for Dynamodb"

}


variable "ami_id" {
    default = "ami-019715e0d74f695be"
    type = string
    description = "This is ami id for Ec2 (ubunutu)"

}