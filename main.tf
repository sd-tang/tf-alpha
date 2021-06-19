
provider "aws" {
  region = "ap-southeast-2"
}

module "first_bucket" {
  source      = "./s3"
  bucket_name = "ct-versioned-bucket"
  versioning  = true
}

module "second_bucket" {
  source      = "./s3"
  bucket_name = "ct-normal-bucket"
}

output "First_Bucket_ARN" {
  value = "${module.first_bucket.s3_bucket_arn}"
}
output "First_Bucket_Versioning" {
  value = "${module.first_bucket.s3_bucket_versioning}"
}

output "Second_Bucket_ARN" {
  value = "${module.second_bucket.s3_bucket_arn}"
}
output "Second_Bucket_Versioning" {
  value = "${module.second_bucket.s3_bucket_versioning}"
}