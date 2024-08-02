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

variable "redirection_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for redirection. Must be globally unique."
  default     = ""
}

variable "website_bucket_name" {
  type        = string
  description = "Name of the S3 bucket for storing website content. Must be globally unique."
  default     = ""
}
