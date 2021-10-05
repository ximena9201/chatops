
module "AWS_S3Bucket" {
  source          = "../../modules/AWS"
  bucket_name     = "ximenademo11"
  AWS_ACCESS_KEY_ID = var.AWS_ACCESS_KEY_ID
  AWS_SECRET_ACCESS_KEY = var.AWS_SECRET_ACCESS_KEY

}
