
module "s3_bucket" {
  source          = "../../modules/AWS"
  bucket          = "ximenademo12"
  acl             = "private"

}



terraform {
  backend "s3" {
    bucket = "demo-s3-terraform-use1"
    key    = "github-actions-example/terraform.tfstate"
    region = "us-east-1"
  }
}
