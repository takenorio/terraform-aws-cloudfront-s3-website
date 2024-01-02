variable "acm_certificate_arn" {
  type        = string
  description = "ARN of the ACM certificate."

  validation {
    condition     = can(regex("^arn:aws:acm:us-east-1:[0-9]{12}:certificate/[a-f0-9-]+$", var.acm_certificate_arn))
    error_message = "The ACM certificate ARN is invalid."
  }
}

variable "cloudfront_distribution_comment" {
  description = "A comment to describe the CloudFront distribution."
  type        = string
  default     = "redirect to website"

  validation {
    condition     = length(var.cloudfront_distribution_comment) <= 128
    error_message = "The total length cannot exceed 128 characters."
  }
}

variable "domain_name" {
  description = "The domain name to be managed by Route53."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9]{0,61}[a-zA-Z0-9])?)*(\\.[a-zA-Z]{2,})$", var.domain_name)) && length(var.domain_name) <= 255
    error_message = "The domain name is invalid."
  }
}

variable "redirection_regional_domain_name" {
  description = "The website bucket region-specific domain name."
  type        = string
}

variable "redirection_bucket_name" {
  description = "Name of the S3 bucket for redirection. Must be globally unique."
  type        = string

  validation {
    condition     = length(var.redirection_bucket_name) >= 3 && length(var.redirection_bucket_name) <= 63
    error_message = "Bucket names must be between 3 (min) and 63 (max) characters long."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.redirection_bucket_name))
    error_message = "Bucket names can consist only of lowercase letters, numbers, dots (.), and hyphens (-)."
  }

  validation {
    condition     = can(regex("^[a-z0-9]", var.redirection_bucket_name)) && can(regex("[a-z0-9]$", var.redirection_bucket_name))
    error_message = "Bucket names must begin and end with a letter or number."
  }

  validation {
    condition     = !can(regex("[.]{2}", var.redirection_bucket_name))
    error_message = "Bucket names must not contain two adjacent periods."
  }

  validation {
    condition     = !can(regex("^(\\d+\\.\\d+\\.\\d+\\.\\d+)$", var.redirection_bucket_name))
    error_message = "Bucket names must not be formatted as an IP address."
  }

  validation {
    condition     = !startswith(var.redirection_bucket_name, "xn--") && !startswith(var.redirection_bucket_name, "sthree-")
    error_message = "Bucket names must not start with the prefix `xn--` and the prefix `sthree-`."
  }

  validation {
    condition     = !endswith(var.redirection_bucket_name, "-s3alias") && !endswith(var.redirection_bucket_name, "--ol-s3")
    error_message = "Bucket names must not end with the suffix `-s3alias` and the suffix `--ol-s3`."
  }
}
