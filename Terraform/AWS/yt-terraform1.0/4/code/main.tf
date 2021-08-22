locals {
  env         = "dev"
  bucket_name = "diogofernandesnew"
}

module "s3" {
  source = "../s3-module"

  env         = local.env
  bucket_name = local.bucket_name
}