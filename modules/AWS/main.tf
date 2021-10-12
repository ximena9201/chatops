resource "aws_s3_bucket" "bucket"{
  bucket = var.bucket
  acl = var.acl


  tags = {
    Name        = "${var.aws_root_name}-${var.region_name}"
    Environment = var.aws_environment_name
  }
}

terraform {
  backend "s3" {
    bucket = "demo-s3-terraform-use1"
    key    = "github-actions-example/terraform.tfstate"
    region = "us-east-1"
  }
}