locals {
  logging_bucket_name = coalesce(var.logging_bucket_name, "${var.domain_name}-logging-${random_string.this.result}")
  website_bucket_name = coalesce(var.website_bucket_name, "${var.domain_name}-website-${random_string.this.result}")
}
