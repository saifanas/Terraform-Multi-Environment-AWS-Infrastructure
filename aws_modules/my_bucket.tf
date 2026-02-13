# S3 Bucket


resource "aws_s3_bucket" "my-bucket" {
  #args
  bucket = "${var.my-env}-saif-free-devops-bootcamp"
  tags = {
    Name = "${var.my-env}-saif-free-devops-bootcamp"
    environment = var.my-env
  }
}
