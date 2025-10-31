# OpenTofu S3 Bucket Module Updated

This module creates an AWS S3 bucket with:
- Optional versioning (default: enabled)
- Optional server-side encryption (SSE-S3 or SSE-KMS)
- Configurable ACL and tags

## Usage

```hcl
module "s3_bucket" {
  source = "path/to/module"

  bucket_name       = "my-example-bucket"
  enable_versioning = true
  enable_sse        = true
  sse_algorithm     = "AES256"
}
