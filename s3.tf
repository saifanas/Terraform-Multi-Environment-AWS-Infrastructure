resource "aws_s3_bucket" "my-bucket" {
  #args
  bucket = "saif-free-devops-bootcamp"
  tags = {
    Name = "saif-free-devops-bootcamp"
  }
}