variable "domain_name" {
  description = "The domain name to be managed by Route53."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9]{0,61}[a-zA-Z0-9])?)*(\\.[a-zA-Z]{2,})$", var.domain_name)) && length(var.domain_name) <= 255
    error_message = "The domain name is invalid."
  }
}
