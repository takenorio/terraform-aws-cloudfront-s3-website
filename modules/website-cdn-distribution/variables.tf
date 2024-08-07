variable "acm_certificate_arn" {
  type        = string
  description = "ARN of the ACM certificate."

  validation {
    condition     = can(regex("^arn:aws:acm:us-east-1:[0-9]{12}:certificate/[a-f0-9-]+$", var.acm_certificate_arn))
    error_message = "The ACM certificate ARN is invalid."
  }
}

variable "cloudfront_distribution_comment" {
  type        = string
  description = "A comment to describe the CloudFront distribution."
  default     = "simple website"

  validation {
    condition     = length(var.cloudfront_distribution_comment) <= 128
    error_message = "The total length cannot exceed 128 characters."
  }
}

variable "domain_name" {
  type        = string
  description = "The domain name to be managed by Route53."

  validation {
    condition     = can(regex("^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9]{0,61}[a-zA-Z0-9])?)*(\\.[a-zA-Z]{2,})$", var.domain_name)) && length(var.domain_name) <= 255
    error_message = "The domain name is invalid."
  }
}

variable "logging_regional_domain_name" {
  type        = string
  description = "The logging bucket region-specific domain name."
}

variable "website_regional_domain_name" {
  type        = string
  description = "The website bucket region-specific domain name."
}

variable "website_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for storing website content. Must be globally unique."

  validation {
    condition     = length(var.website_bucket_name) >= 3 && length(var.website_bucket_name) <= 63
    error_message = "Bucket names must be between 3 (min) and 63 (max) characters long."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.website_bucket_name))
    error_message = "Bucket names can consist only of lowercase letters, numbers, dots (.), and hyphens (-)."
  }

  validation {
    condition     = can(regex("^[a-z0-9]", var.website_bucket_name)) && can(regex("[a-z0-9]$", var.website_bucket_name))
    error_message = "Bucket names must begin and end with a letter or number."
  }

  validation {
    condition     = !can(regex("[.]{2}", var.website_bucket_name))
    error_message = "Bucket names must not contain two adjacent periods."
  }

  validation {
    condition     = !can(regex("^(\\d+\\.\\d+\\.\\d+\\.\\d+)$", var.website_bucket_name))
    error_message = "Bucket names must not be formatted as an IP address."
  }

  validation {
    condition     = !startswith(var.website_bucket_name, "xn--") && !startswith(var.website_bucket_name, "sthree-")
    error_message = "Bucket names must not start with the prefix `xn--` and the prefix `sthree-`."
  }

  validation {
    condition     = !endswith(var.website_bucket_name, "-s3alias") && !endswith(var.website_bucket_name, "--ol-s3")
    error_message = "Bucket names must not end with the suffix `-s3alias` and the suffix `--ol-s3`."
  }
}
