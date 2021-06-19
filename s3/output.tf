
output "s3_bucket_arn" {
  value = "${aws_s3_bucket.bucket.arn}"
}

output "s3_bucket_versioning" {
  value = "${aws_s3_bucket.bucket.versioning[0].enabled}"
}