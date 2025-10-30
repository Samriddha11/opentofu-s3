variable "region" {
  description = "AWS region for the S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "ACL for the bucket"
  type        = string
  default     = "private"
}

variable "enable_versioning" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = true
}

variable "enable_sse" {
  description = "Enable server-side encryption for the bucket"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "SSE algorithm. Use 'AES256' for SSE-S3 or 'aws:kms' for SSE-KMS"
  type        = string
  default     = "AES256"
}

variable "kms_key_id" {
  description = "KMS Key ID or ARN to use when sse_algorithm == 'aws:kms'"
  type        = string
  default     = ""
}

variable "force_destroy" {
  description = "If true, bucket will be destroyed even if it has objects"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Additional tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
