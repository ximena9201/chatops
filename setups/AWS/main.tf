
module "s3_bucket" {
  source          = "../../modules/AWS"
  bucket          = "ximenademo1122"
  acl             = "private"




}
