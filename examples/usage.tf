provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source = "../.." # adjust path to your module

  bucket_name       = "my-example-bucket-12345"
  enable_versioning = true
  enable_sse        = true
  sse_algorithm     = "AES256" # or "aws:kms"
  kms_key_id        = "arn:aws:kms:us-east-1:123456789012:key/abcd-..." # required for aws:kms
  force_destroy     = false

  tags = {
    Environment = "dev"
  }
}
