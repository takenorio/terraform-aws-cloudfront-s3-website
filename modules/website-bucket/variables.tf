variable "logging_bucket_arn" {
  description = "ARN of the S3 bucket for storing logs."
  type        = string
}

variable "logging_bucket_name" {
  description = "Name of the S3 bucket for storing logs. Must be globally unique."
  type        = string

  validation {
    condition     = length(var.logging_bucket_name) >= 3 && length(var.logging_bucket_name) <= 63
    error_message = "Bucket names must be between 3 (min) and 63 (max) characters long."
  }

  validation {
    condition     = can(regex("^[a-z0-9-.]+$", var.logging_bucket_name))
    error_message = "Bucket names can consist only of lowercase letters, numbers, dots (.), and hyphens (-)."
  }

  validation {
    condition     = can(regex("^[a-z0-9]", var.logging_bucket_name)) && can(regex("[a-z0-9]$", var.logging_bucket_name))
    error_message = "Bucket names must begin and end with a letter or number."
  }

  validation {
    condition     = !can(regex("[.]{2}", var.logging_bucket_name))
    error_message = "Bucket names must not contain two adjacent periods."
  }

  validation {
    condition     = !can(regex("^(\\d+\\.\\d+\\.\\d+\\.\\d+)$", var.logging_bucket_name))
    error_message = "Bucket names must not be formatted as an IP address."
  }

  validation {
    condition     = !startswith(var.logging_bucket_name, "xn--") && !startswith(var.logging_bucket_name, "sthree-")
    error_message = "Bucket names must not start with the prefix `xn--` and the prefix `sthree-`."
  }

  validation {
    condition     = !endswith(var.logging_bucket_name, "-s3alias") && !endswith(var.logging_bucket_name, "--ol-s3")
    error_message = "Bucket names must not end with the suffix `-s3alias` and the suffix `--ol-s3`."
  }
}

variable "website_bucket_name" {
  description = "Name of the S3 bucket for storing website content. Must be globally unique."
  type        = string

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
