variable "cloudfront_distribution_comment" {
  type        = string
  description = "A comment to describe the CloudFront distribution."
  default     = "simple website"

  validation {
    condition     = length(var.cloudfront_distribution_comment) <= 128
    error_message = "The total length cannot exceed 128 characters."
  }
}

variable "cloudfront_distribution_logging_prefix" {
  type        = string
  description = "Prefix for the CloudFront distribution that will store logs."

  default = "cloudfront-distribution-logs/"
}

variable "domain_name" {
  type        = string
  description = "The domain name to be managed by Route53."
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9]{0,61}[a-zA-Z0-9])?)*(\\.[a-zA-Z]{2,})$", var.domain_name)) && length(var.domain_name) <= 255
    error_message = "The domain name is invalid."
  }
}

variable "logging_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for storing logs. Must be globally unique."
  default     = ""
}

variable "website_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for storing website content. Must be globally unique."
  default     = ""
}

variable "s3_bucket_logging_prefix" {
  type        = string
  description = "Prefix for the S3 bucket that will store logs."

  default = "s3-bucket-logs/"
}
