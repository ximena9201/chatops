resource "aws_s3_bucket" "bucket"{
  bucket = var.bucket
  acl = var.acl


  tags = {
    Name        = "demo"
    Environment = "development"
  }
}

terraform {
  backend "s3" {
    bucket = "demo-s3-terraform-use1"
    key    = "github-actions-example/terraform.tfstate"
    region = "us-east-1"
  }
}