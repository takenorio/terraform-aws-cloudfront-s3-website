locals {
  domain_name = lower(var.domain_name)
}

module "simple_website" {
  source              = "../../"
  domain_name         = local.domain_name
  logging_bucket_name = "${local.domain_name}-logs"
  website_bucket_name = "${local.domain_name}-web"
}
