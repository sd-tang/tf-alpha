
terraform {
  backend "s3" {
      bucket = "ct-tf-alpha-state"
      key = "project.state"
      region = "ap-southeast-2"
  }
}