
module "s3_bucket" {
  source          = "../../modules/AWS"
  bucket          = "ximenademo11"
  acl             = "private"

}
